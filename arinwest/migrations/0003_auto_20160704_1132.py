# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-07-04 08:32
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('arinwest', '0002_portfoliolevel'),
    ]

    operations = [
        migrations.CreateModel(
            name='PortfolioItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e')),
                ('description', models.CharField(help_text='arinwest/img/portfolio/<level_name>/<file_name>.jpg', max_length=250, verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e')),
                ('url_img', models.CharField(help_text='arinwest/img/portfolio/<level_name>/<file_name>.jpg', max_length=250, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044e \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e')),
            ],
            options={
                'verbose_name': '\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e',
                'verbose_name_plural': '\u042d\u043b\u0435\u043c\u0435\u043d\u0442\u044b\u044b \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e',
            },
        ),
        migrations.AlterModelOptions(
            name='portfoliolevel',
            options={'verbose_name': '\u0420\u0430\u0437\u0434\u0435\u043b \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e', 'verbose_name_plural': '\u0420\u0430\u0437\u0434\u0435\u043b\u044b \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e'},
        ),
        migrations.AlterField(
            model_name='portfoliolevel',
            name='code',
            field=models.CharField(max_length=50, primary_key=True, serialize=False, unique=True, verbose_name='\u041a\u043e\u0434 \u0434\u043b\u044f \u0444\u0438\u043b\u044c\u0442\u0440\u0430 (\u0442\u043e\u043b\u044c\u043a\u043e \u043b\u0430\u0442\u0438\u043d\u0441\u043a\u0438\u0435 \u0441\u0438\u043c\u0432\u043e\u043b\u044b)'),
        ),
        migrations.AlterField(
            model_name='portfoliolevel',
            name='name',
            field=models.CharField(max_length=50, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0440\u0430\u0437\u0434\u0435\u043b\u0430 \u043f\u043e\u0440\u0442\u0444\u043e\u043b\u0438\u043e'),
        ),
        migrations.AddField(
            model_name='portfolioitem',
            name='filter_name',
            field=models.ForeignKey(help_text='\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0438\u0437 \u0441\u0443\u0449\u0435\u0441\u0442\u0432\u0443\u044e\u0449\u0438\u0445', on_delete=django.db.models.deletion.CASCADE, to='arinwest.PortfolioLevel', verbose_name='\u041a\u043e\u0434 \u0444\u0438\u043b\u044c\u0442\u0440\u0430'),
        ),
    ]