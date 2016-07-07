from django.contrib import admin

from .models import Author, Article, Tag, ImageForArticle


class ImageForArticleInline(admin.TabularInline):
	model = ImageForArticle
	extra = 1

class ArticleAdmin(admin.ModelAdmin):
	list_display = ('__unicode__', 'author', 'pub_date')
	list_filter = ['pub_date','author']
	ordering = ['-pub_date']
	inlines = [ImageForArticleInline]

admin.site.register(Author)
admin.site.register(Tag)
admin.site.register(Article, ArticleAdmin)