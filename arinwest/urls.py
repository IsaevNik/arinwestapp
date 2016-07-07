from django.conf.urls import url

from . import views

app_name = 'arinwest'
urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^about$', views.about, name='about'),
	url(r'^portfolio$', views.portfolio, name='portfolio'),	
	url(r'^contacts$', views.contacts, name='contacts'),
	url(r'^service/(?P<service_id>[0-9]+)$', views.service, name='service'),
	url(r'^sendemail$', views.sendemail, name='sendemail'),
	url(r'^getinsta$', views.getinsta),
]

'''url(r'^auto/$', views.auto, name='auto'),
	url(r'^project/(?P<project_id>[0-9]+)$', views.project, name='project'),
	url(r'^service/(?P<service_id>[0-9]+)$', views.service, name='service'),
	url(r'^singlecar/(?P<car_id>[0-9]+)$', views.singlecar, name='singlecar'),
	url(r'^sendemail/$', views.sendemail, name='sendemail')'''