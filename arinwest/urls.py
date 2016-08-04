from django.conf.urls import url

from . import views

app_name = 'arinwest'
urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^about$', views.about, name='about'),
	url(r'^portfolio$', views.portfolio, name='portfolio'),	
	url(r'^celebrities$', views.celebrities, name='celebrities'),
	url(r'^contacts$', views.contacts, name='contacts'),
	url(r'^service/(?P<filial_code>[a-z]+)$', views.service, name='service'),
	url(r'^sendemail$', views.sendemail, name='sendemail'),
	url(r'^getinsta$', views.getinsta),
	url(r'^get_staff_member_info$', views.get_staff_member_info),
]

