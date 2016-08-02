# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.


class Author(models.Model):

	name = models.CharField('Фамилия Имя',max_length=100)
	img_url = models.CharField('Ссылка на аватар', 
							   max_length=190,
							   help_text='blog/img/authors/[file_name].jpg')
	def __unicode__(self):
		return self.name

class Tag(models.Model):

	name = models.CharField('Тэг',
							max_length=50,
							primary_key=True, 
							unique=True)
	code = models.CharField('Код тега (для фильтра, только латинские символы)',
							max_length=50)

	def __unicode__(self):
		return self.name

class Article(models.Model):

	title = models.CharField('Заголовок статьи', max_length=200)
	text = models.TextField('Текст статьи')
	author = models.ForeignKey(Author, 
							   on_delete=models.CASCADE,
							   verbose_name='Автор')
	tags = models.ManyToManyField(Tag, 
								  related_name='articles', 
								  verbose_name='Тэги')
	pub_date = models.DateField('Дата публикации', auto_now_add=True)
	youtube_url = models.CharField('Ссылка на видео', 
							   max_length=250,
							   blank=True)

	def __unicode__(self):
		return " ".join(self.text.split(" ")[:5]) + '...'


class ImageForArticle(models.Model):

	article = models.ForeignKey(Article, 
								on_delete=models.CASCADE,
								related_name='images')
	img_url = models.CharField('Ссылка на фотографию', 
							   max_length=200,
							   help_text='blog/img/articles/[folder_name]/[file_name].jpg')
	is_preview = models.BooleanField('Фото-превью статьи', default=False)

	def __unicode__(self):
		return self.img_url