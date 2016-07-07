from django.shortcuts import render, get_object_or_404, redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from arinwest.models import Service, Filial
from .models import Article, Tag

ARTICLES_ON_PAGE = 3

# Create your views here.
def index(request):
	services_items = ([{'filial_name' : filial.name,
						'services' : Service.objects.filter(filial__code=filial.code)}
						 for filial in Filial.objects.all()])
	articles_full_list = Article.objects.order_by('-pub_date')
	paginator = Paginator(articles_full_list, ARTICLES_ON_PAGE)
	tags = Tag.objects.all()

	page = request.GET.get('page')
	try:
		articles = paginator.page(page)
	except PageNotAnInteger:
		articles = paginator.page(1)
	except EmptyPage:
		articles = paginator.page(paginator.num_pages)

	articles_list = ([{'article': article, 
					   'img_preview': article.images.get(is_preview=True),
					   'text_preview': ' '.join(article.text.split()[:50])} for article in articles])
	return render(request, 'blog/blog.html', {'services_items' : services_items,
											  'articles_list' : articles_list,
											  'articles': articles,
											  'tags': tags})

def article(request, article_id):
	article = get_object_or_404(Article, pk=article_id)
	services_items = ([{'filial_name' : filial.name,
						'services' : Service.objects.filter(filial__code=filial.code)} 
						for filial in Filial.objects.all()])
	similar_articles_list = Article.objects.filter(
		tags__name__in=[tag.name for tag in article.tags.all()]).exclude(
		id=article_id).order_by('-pub_date')
	similar_articles = ([{'similar_article': similar_article, 
					   'img_preview': similar_article.images.get(is_preview=True)} 
					   for similar_article in similar_articles_list])
	
	return render(request, 'blog/article.html', {'services_items' : services_items,
												 'article' : article,
												 'similar_articles' : similar_articles})

def tagfilter(request, tag_code):
	services_items = ([{'filial_name' : filial.name,
						'services' : Service.objects.filter(filial__code=filial.code)}
						 for filial in Filial.objects.all()])
	try:
		active_tag = Tag.objects.get(code=tag_code)
	except Tag.DoesNotExist:
		return redirect('/blog/') 
	tags = Tag.objects.all()
	articles_tag_list = Article.objects.filter(tags__code=tag_code).order_by('-pub_date')
	paginator = Paginator(articles_tag_list, ARTICLES_ON_PAGE)
	page = request.GET.get('page')
	try:
		articles = paginator.page(page)
	except PageNotAnInteger:
		articles = paginator.page(1)
	except EmptyPage:
		articles = paginator.page(paginator.num_pages)

	articles_list = ([{'article': article, 
					   'img_preview': article.images.get(is_preview=True),
					   'text_preview': ' '.join(article.text.split()[:50])} for article in articles])
	return render(request, 'blog/blog.html', {'services_items' : services_items,
											  'articles_list' : articles_list,
											  'articles': articles,
											  'tags': tags,
											  'active_tag': active_tag})