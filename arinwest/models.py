# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from blog.models import Tag

# Create your models here.
class StartPage(models.Model):

	class Meta:
		verbose_name = 'Main page'
		verbose_name_plural = 'Version of main page'

	text = models.TextField('Текст на главной')
	is_publish = models.BooleanField('Опубликовать',default=False)

	
	def __unicode__(self):
		return self.text


class PortfolioLevel(models.Model):

	class Meta:
		verbose_name = 'Раздел портфолио'
		verbose_name_plural = 'Разделы портфолио'

	code = models.CharField('Код для фильтра (только латинские символы)',
							max_length=50,
							primary_key=True, 
							unique=True)

	name = models.CharField('Название раздела портфолио', max_length=50)

	def __unicode__(self):
		return self.code

	
class PortfolioItem(models.Model):

	class Meta:
		verbose_name = 'Элемент портфолио'
		verbose_name_plural = 'Элементы портфолио'

	name = models.CharField('Название элемента портфолио', 
							max_length=50, 
							blank=True)
	description = models.CharField('Описание элемента портфолио', 
									max_length=250,
									blank=True)
	url_img = models.CharField('Ссылка на фотографию элемента портфолио', 
								max_length=250,
								help_text = 'arinwest/img/portfolio/[level_name]/[file_name].jpg')
	filter_name = models.ForeignKey(PortfolioLevel,
									verbose_name='Код фильтра', 
									on_delete=models.CASCADE,
									help_text='Выберите из существующих')
	article_url = models.CharField('Ссылка на пост в блоге', 
							   max_length=100,
							   help_text='blog/article/[article_number]',
							   blank=True)
	def __unicode__(self):
		return self.name

class Filial(models.Model):
	code = models.CharField('Код для фильтра (только латинские символы)',
							max_length=50,
							primary_key=True, 
							unique=True)
	adress = models.CharField('Адрес',
							  max_length=200,
							  help_text='[населённый пункт], [улица], [номер дома]')
	name = models.CharField('Город',
							max_length=50,
							help_text='Населённый пункт в котором находится салон',
							unique=True)
	user_insta = models.CharField('Instagram User ID',
							max_length=20,
							blank=True)
	user_insta_token = models.CharField('Instagram access token',
							max_length=100,
							blank=True)

	def __unicode__(self):
		return 'Arin West ' + self.name

class Service(models.Model):

	class Meta:
		verbose_name = 'Элемент раздела "Категория услуг"'
		verbose_name_plural = 'Элементы раздела "Категория услуг"'
	name = models.CharField('Название категории услуги',max_length=100)
	description = models.TextField('Описание категории услуги',
								   blank=True)
	img_url = models.CharField('Ссылка на фотографию', 
							   max_length=200,
							   help_text='arinwest/img/service/[file_name].jpg')
	filial = models.ForeignKey(Filial, 
								   on_delete=models.CASCADE,
								   related_name='services',
								   to_field='name')
	info = models.TextField('Информационная справка',
							 blank=True)
	youtube_url = models.CharField('Ссылка на видео', 
						   			max_length=250,
						   			blank=True)
	code = models.CharField('Код для создания ссылки (только латинские символы)',
							max_length=50)

	def __unicode__(self):
		return self.name

class ServiceSublevel(models.Model):
	class Meta:
		verbose_name = "Подуровень категории услуг"
		verbose_name_plural = "Подуровни категории услуг"
	name = models.CharField('Название подуровня',max_length=100)
	description = models.TextField('Описание подуровня', blank=True)
	crm_id = models.CharField('ID в системе y-clients',max_length=100, blank=True)
	sublevel_type = models.IntegerField(default=1, editable=False)
	coast = models.CharField('Стоимость',max_length=20, blank=True)
	service = models.ForeignKey(Service, 
								on_delete=models.CASCADE,
								related_name='sublevels')
	def __unicode__(self):
		return self.name


class ServiceSublevelLine(models.Model):
	class Meta:
		verbose_name = 'Элемент подуровня'
		verbose_name_plural = 'Элементы подуровня'
	text = models.CharField('Название услуги', max_length=50, help_text='Название услуги')
	coast = models.CharField('Стоимость',max_length=20)
	service_sub = models.ForeignKey(ServiceSublevel, 
									on_delete=models.CASCADE,
									related_name='coastlines')

	def __unicode__(self):
		return self.text

class AboutPage(models.Model):
	class Meta:
		verbose_name = 'About Page'
	insta_img = models.IntegerField('Колличество фото из инстаграмма', default=10)

	def __unicode__(self):
		return "О Нас"

class ImgForSlider(models.Model):
	class Meta:
		verbose_name = 'Фото для слайдера'
		verbose_name_plural = 'Фото для слайдера'
	about_page = models.ForeignKey(AboutPage, on_delete=models.CASCADE)
	img_url = models.CharField('Ссылка на фотографию', 
							   max_length=200,
							   help_text='arinwest/img/about/slider/[file_name].jpg')

	def __unicode__(self):
		return self.img_url


class StaffMember(models.Model):
	class Meta:
		verbose_name = 'Master'
		verbose_name_plural = 'Masters'
	name = models.CharField('Фамилия Имя',max_length=100)
	post = models.CharField('Должность',max_length=100)
	crm_id = models.CharField('ID в системе y-clients',max_length=100, blank=True)
	img_url = models.CharField('Ссылка на фотографию мастера', 
							   max_length=200,
							   help_text='arinwest/img/about/staff/[file_name].jpg')
	about_page = models.ForeignKey(AboutPage, on_delete=models.CASCADE)
	filial = models.ForeignKey(Filial, 
								   on_delete=models.CASCADE,
								   related_name='masters',
								   to_field='name')
	hash_tag = models.CharField('Хэштэг в инстаграмме',max_length=100,
											blank=True)
	article = models.TextField('Заметка о мастере', blank=True)
	tags = models.ManyToManyField(Tag, 
								  related_name='masters', 
								  verbose_name='Тэги')


	def __unicode__(self):
		return self.name
