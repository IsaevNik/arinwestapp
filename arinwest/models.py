# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

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

	name = models.CharField('Название элемента портфолио', max_length=50)
	description = models.CharField('Описание элемента портфолио', 
									max_length=250)
	url_img = models.CharField('Ссылка на фотографию элемента портфолио', 
								max_length=250,
								help_text = 'arinwest/img/portfolio/[level_name]/[file_name].jpg')
	filter_name = models.ForeignKey(PortfolioLevel,
									verbose_name='Код фильтра', 
									on_delete=models.CASCADE,
									help_text='Выберите из существующих')
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
		verbose_name = 'Элемент раздела "Услуги"'
		verbose_name_plural = 'Элементы раздела "Услуги"'
	name = models.CharField('Название услуги',max_length=100)
	description = models.TextField('Описание услуги')
	crm_id = models.CharField('ID в системе y-clients',max_length=100, blank=True)
	img_url = models.CharField('Ссылка на фотографию', 
							   max_length=200,
							   help_text='arinwest/img/service/[file_name].jpg')
	filial = models.ForeignKey(Filial, 
								   on_delete=models.CASCADE,
								   related_name='services',
								   to_field='name')

	def __unicode__(self):
		return self.name

class ServiceCoastLine(models.Model):
	class Meta:
		verbose_name = 'Line text/price'
		verbose_name_plural = 'Lines tex/price'
	text = models.CharField('Пункт', max_length=50, help_text='Подраздел услуги')
	coast = models.IntegerField('Стоимость услуги')
	service = models.ForeignKey(Service, on_delete=models.CASCADE)

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

	def __unicode__(self):
		return self.name
