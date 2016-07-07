# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-07-06 15:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('arinwest', '0006_auto_20160706_1455'),
    ]

    operations = [
        migrations.AddField(
            model_name='filial',
            name='user_insta',
            field=models.CharField(blank=True, max_length=20, verbose_name='Instagram User ID'),
        ),
        migrations.AddField(
            model_name='filial',
            name='user_insta_token',
            field=models.CharField(blank=True, max_length=100, verbose_name='Instagram access token'),
        ),
        migrations.AddField(
            model_name='service',
            name='crm_id',
            field=models.CharField(blank=True, max_length=100, verbose_name='ID \u0432 \u0441\u0438\u0441\u0442\u0435\u043c\u0435 y-clients'),
        ),
    ]