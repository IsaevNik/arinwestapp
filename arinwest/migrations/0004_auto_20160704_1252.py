# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-07-04 09:52
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('arinwest', '0003_auto_20160704_1132'),
    ]

    operations = [
        migrations.CreateModel(
            name='Service',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0443\u0441\u043b\u0443\u0433\u0438')),
                ('description', models.TextField(verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u0443\u0441\u043b\u0443\u0433\u0438')),
                ('img_url', models.CharField(help_text='arinwest/img/service/[file_name].jpg', max_length=200, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044e')),
            ],
            options={
                'verbose_name': '\u0423\u0441\u043b\u0443\u0433\u0430',
                'verbose_name_plural': '\u0423\u0441\u043b\u0443\u0433\u0438',
            },
        ),
        migrations.CreateModel(
            name='ServiceCoastLine',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', models.CharField(help_text='\u041f\u043e\u0434\u0440\u0430\u0437\u0434\u0435\u043b \u0443\u0441\u043b\u0443\u0433\u0438', max_length=50, verbose_name='\u041f\u0443\u043d\u043a\u0442')),
                ('coast', models.IntegerField(verbose_name='\u0421\u0442\u043e\u0438\u043c\u043e\u0441\u0442\u044c \u0443\u0441\u043b\u0443\u0433\u0438')),
                ('service', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='arinwest.Service')),
            ],
            options={
                'verbose_name': '\u0421\u0442\u0440\u043e\u043a\u0430 \u043f\u0443\u043d\u043a\u0442/\u0441\u0442\u043e\u0438\u043c\u043e\u0441\u0442\u044c',
                'verbose_name_plural': '\u0421\u0442\u0440\u043e\u043a\u0438 \u043f\u0443\u043d\u043a\u0442/\u0441\u0442\u043e\u0438\u043c\u043e\u0441\u0442\u044c',
            },
        ),
        migrations.AlterModelOptions(
            name='portfolioitem',
            options={'verbose_name': '\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e', 'verbose_name_plural': '\u042d\u043b\u0435\u043c\u0435\u043d\u0442\u044b \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e'},
        ),
        migrations.AlterField(
            model_name='portfolioitem',
            name='description',
            field=models.CharField(max_length=250, verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e'),
        ),
        migrations.AlterField(
            model_name='portfolioitem',
            name='url_img',
            field=models.CharField(help_text='arinwest/img/portfolio/[level_name]/[file_name].jpg', max_length=250, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044e \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e'),
        ),
    ]