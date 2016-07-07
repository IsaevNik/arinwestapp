# -*- coding: utf-8 -*-
from django.contrib import admin

from .models import StartPage, PortfolioLevel, PortfolioItem, Service,\
					ServiceCoastLine, AboutPage, ImgForSlider, StaffMember, \
					Filial

class StartPageAdmin(admin.ModelAdmin):

	def text_preview(self, obj):
		return " ".join(obj.text.split(" ")[:4]) + '...'
	text_preview.short_description = 'Текст'

	def is_published(self, obj):
		return obj.is_publish
	is_published.boolean = True
	is_published.short_description = 'Опубликована?'

	#list_editable = ('is_published')
	list_display = ('text_preview','is_published')

class PortfolioLevelAdmin(admin.ModelAdmin):

	list_display = ('name','code')

class PortfolioItemAdmin(admin.ModelAdmin):

	list_display = ('name','url_img','filter_name')
	list_filter = ['filter_name']

class ServiceCoastLineInline(admin.TabularInline):
	model = ServiceCoastLine
	extra = 1

class ServiceAdmin(admin.ModelAdmin):
	list_display = ('name', 'filial')
	inlines = [ServiceCoastLineInline]
	list_filter = ['filial']

class ImgForSliderInline(admin.TabularInline):
	model = ImgForSlider
	extra = 1

'''class StaffMemberInline(admin.TabularInline):
	model = StaffMember
	extra = 1'''

class AboutPageAdmin(admin.ModelAdmin):
	list_display = ('__unicode__',)
	inlines = [ImgForSliderInline]

	def has_add_permission(self, request):
		num_objects = self.model.objects.count()
		if num_objects >= 1:
			return False
		else:
			return True

class FilialAdmin(admin.ModelAdmin):

	list_display = ('name','code')


class StaffMemberAdmin(admin.ModelAdmin):

	list_display = ('name','filial','post')
	list_filter = ['filial']

admin.site.register(StartPage, StartPageAdmin)
admin.site.register(PortfolioLevel, PortfolioLevelAdmin)
admin.site.register(PortfolioItem, PortfolioItemAdmin)
admin.site.register(Service, ServiceAdmin)
admin.site.register(AboutPage, AboutPageAdmin)
admin.site.register(Filial, FilialAdmin)
admin.site.register(StaffMember, StaffMemberAdmin)
