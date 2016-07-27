# -*- coding: utf-8 -*-
import urllib2
import json

from django.shortcuts import render, get_object_or_404, render_to_response
from django.http import HttpResponse, Http404
from django.core.mail import mail_managers
from django.views.decorators.csrf import csrf_protect, csrf_exempt
from django.template import RequestContext
from django.db.models import Count

from .models import StartPage, PortfolioLevel, PortfolioItem, Service, AboutPage, Filial, StaffMember


def index(request):
	try:
		main_text = StartPage.objects.get(is_publish=True)
	except StartPage.DoesNotExist:
		main_text = {'text' : "***Выберите текст на главную***"} 
	services_items = ([{'filial_name' : filial.name,
						'filial_code' : filial.code,
						'services' : Service.objects.filter(filial__code=filial.code)} for filial in Filial.objects.all()])
	return render(request, 'arinwest/index.html', {'main_text' : main_text,
												   'services_items' : services_items})

def about(request):
	services_items = ([{'filial_name' : filial.name,
						'filial_code' : filial.code,
						'services' : Service.objects.filter(filial__code=filial.code)} for filial in Filial.objects.all()])
	about_us_page = AboutPage.objects.get()
	filials = Filial.objects.all()
	filial_max_members = Filial.objects\
							   .annotate(num_masters=Count('masters'))\
							   .order_by('-num_masters')[0]
	
	filial_code = filial_max_members.code
	
	return render(request, 'arinwest/about.html', {'services_items' : services_items,
												   'about_us_page' : about_us_page,
												   'filial_code' : filial_code,
												   'filials' : filials})
def add_preview(url):
	url_list = url.split('/')
	return '/'.join((url_list[:-1])+(['preview',url_list[-1]]))

def portfolio(request):
	portfolio_levels = PortfolioLevel.objects.all()
	portfolio_queryset = PortfolioItem.objects.all()
	portfolio_items = ([{'item': portfolio_item, 
						 'item_preview': add_preview(portfolio_item.url_img)}
						  for portfolio_item in portfolio_queryset ])
	services_items = ([{'filial_name' : filial.name,
						'filial_code' : filial.code,
						'services' : Service.objects.filter(filial__code=filial.code)} for filial in Filial.objects.all()])

	return render(request, 'arinwest/portfolio.html', {'portfolio_levels' : portfolio_levels,
													   'portfolio_items' : portfolio_items,
													   'services_items' : services_items})
def service(request, filial_code):
	services = Service.objects.filter(filial__code=filial_code)
	services_items = ([{'filial_name' : filial.name,
						'filial_code' : filial.code,
						'services' : Service.objects.filter(filial__code=filial.code)} for filial in Filial.objects.all()])
	
	return render(request, 'arinwest/service.html', {'services' : services,
												     'services_items' : services_items})

def contacts(request):
	services_items = ([{'filial_name' : filial.name,
						'filial_code' : filial.code,
						'services' : Service.objects.filter(filial__code=filial.code)} for filial in Filial.objects.all()])
	return render(request, 'arinwest/contacts.html', {'services_items' : services_items})

def sendemail(request):
	if request.method == 'GET':
		raise Http404
	subject = request.POST.get('subject')
	name = request.POST.get('name')
	comments = request.POST.get('message')
	email = request.POST.get('email')

	msg = u'name: {}\nmessage: {}\nemail: {}\n'.format(
													name,
													comments,
													email)
	try:
		mail_managers(subject, msg)
	except Exception:	
 		return HttpResponse({'Error'})
 	else:
 		return HttpResponse({'OK'})

@csrf_exempt
def getinsta(request):
	if request.method == 'GET':
		raise Http404
	filial_code = request.POST.get('filial')[1:]
	filial_choice = get_object_or_404(Filial, code=filial_code)
	url = "https://api.instagram.com/v1/users/{}/media/recent/?access_token={}".format(
		filial_choice.user_insta, filial_choice.user_insta_token)

	response = urllib2.urlopen(url)
	insta_data = json.loads(response.read())
	
	thumbnail_data = ([{'img_url': item['images']['thumbnail']['url'], 
		'url' : item['link']} for item in insta_data['data'] if item['attribution'] == None])

	insta_img_count = AboutPage.objects.get().insta_img;

	thumbnail_data = thumbnail_data[:insta_img_count]
	return render(request, 'arinwest/insta_collage.html', {'thumbnail_data' : thumbnail_data})

@csrf_exempt
def get_staff_member_info(request):
	if request.method == 'GET':
		raise Http404
	name = request.POST.get('name')
	staff_member_get = get_object_or_404(StaffMember, name=name)
	staff_member = {"name" : staff_member_get.name,
					"post" : staff_member_get.post,
					"img_url" : staff_member_get.img_url,
					"article" : staff_member_get.article,
					"tags" :  staff_member_get.tags}
	return render(request,'arinwest/staff_member_info.html', {'staff_member' : staff_member})

def page_not_found(request):
	services_items = ([{'filial_name' : filial.name,
						'filial_code' : filial.code,
						'services' : Service.objects.filter(filial__code=filial.code)}
						for filial in Filial.objects.all()])
	response = render_to_response(
	'arinwest/error.html',
	{'services_items': services_items,
	 'title': 'Страница не найдена',
	 'text': 'Запрашиваемая вами страница не найдена.'},
	context_instance=RequestContext(request)
	)

	response.status_code = 404

	return response

def server_error(request):
	services_items = ([{'filial_name' : filial.name,
						'filial_code' : filial.code,
						'services' : Service.objects.filter(filial__code=filial.code)}
						for filial in Filial.objects.all()])
	response = render_to_response(
	'arinwest/error.html',
	{'services_items': services_items,
	 'title': 'Ошибка на сервере',
	 'text': 'К сожалению мы не можем обработать ваш запрос.'},
	context_instance=RequestContext(request)
	)

	response.status_code = 500

	return response