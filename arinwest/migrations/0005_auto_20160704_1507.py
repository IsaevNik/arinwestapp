# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-07-04 12:07
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('arinwest', '0004_auto_20160704_1252'),
    ]

    operations = [
        migrations.CreateModel(
            name='AboutPage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('insta_img', models.IntegerField(default=10, verbose_name='\u041a\u043e\u043b\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u0444\u043e\u0442\u043e \u0438\u0437 \u0438\u043d\u0441\u0442\u0430\u0433\u0440\u0430\u043c\u043c\u0430')),
            ],
            options={
                'verbose_name': '\u0421\u0442\u0440\u0430\u043d\u0438\u0446\u0430 "\u041e \u041d\u0430\u0441"',
            },
        ),
        migrations.CreateModel(
            name='ImgForSlider',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('img_url', models.CharField(help_text='arinwest/img/about/slider/[file_name].jpg', max_length=200, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044e')),
                ('about_page', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='arinwest.AboutPage')),
            ],
            options={
                'verbose_name': '\u0424\u043e\u0442\u043e \u0434\u043b\u044f \u0441\u043b\u0430\u0439\u0434\u0435\u0440\u0430',
                'verbose_name_plural': '\u0424\u043e\u0442\u043e \u0434\u043b\u044f \u0441\u043b\u0430\u0439\u0434\u0435\u0440\u0430',
            },
        ),
        migrations.CreateModel(
            name='StaffMember',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='\u0424\u0430\u043c\u0438\u043b\u0438\u044f \u0418\u043c\u044f')),
                ('post', models.CharField(max_length=100, verbose_name='\u0414\u043e\u043b\u0436\u043d\u043e\u0441\u0442\u044c')),
                ('crm_id', models.CharField(blank=True, max_length=100, verbose_name='ID \u0432 \u0441\u0438\u0441\u0442\u0435\u043c\u0435 y-clients')),
                ('img_url', models.CharField(help_text='arinwest/img/about/staff/[file_name].jpg', max_length=200, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044e \u043c\u0430\u0441\u0442\u0435\u0440\u0430')),
                ('about_page', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='arinwest.AboutPage')),
            ],
            options={
                'verbose_name': '\u041c\u0430\u0441\u0442\u0435\u0440\u0430',
                'verbose_name_plural': '\u041c\u0430\u0441\u0442\u0435\u0440\u0430',
            },
        ),
        migrations.AlterModelOptions(
            name='service',
            options={'verbose_name': '\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0440\u0430\u0437\u0434\u0435\u043b\u0430 "\u0423\u0441\u043b\u0443\u0433\u0438"', 'verbose_name_plural': '\u042d\u043b\u0435\u043c\u0435\u043d\u0442\u044b \u0440\u0430\u0437\u0434\u0435\u043b\u0430 "\u0423\u0441\u043b\u0443\u0433\u0438"'},
        ),
    ]
