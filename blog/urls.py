from django.conf.urls import url

from . import views

app_name = 'blog'
urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^article/(?P<article_id>[0-9]+)$', views.article, name='article'),
	url(r'^tag/(?P<tag_code>[a-z]+)$', views.tagfilter, name='tagfilter'),
]

'''url(r'^auto/$', views.auto, name='auto'),
	url(r'^project/(?P<project_id>[0-9]+)$', views.project, name='project'),
	url(r'^service/(?P<service_id>[0-9]+)$', views.service, name='service'),
	url(r'^singlecar/(?P<car_id>[0-9]+)$', views.singlecar, name='singlecar'),
	url(r'^sendemail/$', views.sendemail, name='sendemail')'''