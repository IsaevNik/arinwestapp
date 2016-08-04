# -*- coding: utf-8 -*-
from django.contrib import admin

from .models import StartPage, PortfolioLevel, PortfolioItem, Service,\
					ServiceSublevelLine, AboutPage, ImgForSliderFilial, StaffMember, \
					Filial, ServiceSublevel, Celebrity

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

	list_display = ('name','code','numeric')
	list_editable = ['numeric']

class PortfolioItemAdmin(admin.ModelAdmin):

	list_display = ('__unicode__','url_img','filter_name')
	list_filter = ['filter_name']
	list_editable = ['url_img','filter_name']

class ServiceAdmin(admin.ModelAdmin):
	list_display = ('name', 'filial')
	list_filter = ['filial']
	save_as = True

class ServiceSublevelLineInline(admin.TabularInline):
	model = ServiceSublevelLine
	extra = 0

class ServiceSublevelAdmin(admin.ModelAdmin):
	inlines = [ServiceSublevelLineInline]
	list_display = ('name', 'service')
	list_filter = ['service']

	def save_model(self, request, obj, form, change):
		if len(obj.coastlines.all()):
			obj.sublevel_type = 2
		else:
			obj.sublevel_type = 1
		obj.save()

class ImgForSliderFilialInline(admin.TabularInline):
	model = ImgForSliderFilial
	extra = 1

class AboutPageAdmin(admin.ModelAdmin):
	list_display = ('__unicode__',)

	def has_add_permission(self, request):
		num_objects = self.model.objects.count()
		if num_objects >= 1:
			return False
		else:
			return True

class FilialAdmin(admin.ModelAdmin):

	list_display = ('name','code')
	inlines = [ImgForSliderFilialInline]


class StaffMemberAdmin(admin.ModelAdmin):

	list_display = ('name','filial','post')
	list_filter = ['filial']

admin.site.register(StartPage, StartPageAdmin)
admin.site.register(PortfolioLevel, PortfolioLevelAdmin)
admin.site.register(PortfolioItem, PortfolioItemAdmin)
admin.site.register(Service, ServiceAdmin)
admin.site.register(ServiceSublevel, ServiceSublevelAdmin)
admin.site.register(AboutPage, AboutPageAdmin)
admin.site.register(Filial, FilialAdmin)
admin.site.register(StaffMember, StaffMemberAdmin)
admin.site.register(Celebrity)
