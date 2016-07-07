# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-07-06 11:55
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('arinwest', '0005_auto_20160704_1507'),
    ]

    operations = [
        migrations.CreateModel(
            name='Filial',
            fields=[
                ('code', models.CharField(max_length=50, primary_key=True, serialize=False, unique=True, verbose_name='\u041a\u043e\u0434 \u0434\u043b\u044f \u0444\u0438\u043b\u044c\u0442\u0440\u0430 (\u0442\u043e\u043b\u044c\u043a\u043e \u043b\u0430\u0442\u0438\u043d\u0441\u043a\u0438\u0435 \u0441\u0438\u043c\u0432\u043e\u043b\u044b)')),
                ('adress', models.CharField(help_text='[\u043d\u0430\u0441\u0435\u043b\u0451\u043d\u043d\u044b\u0439 \u043f\u0443\u043d\u043a\u0442], [\u0443\u043b\u0438\u0446\u0430], [\u043d\u043e\u043c\u0435\u0440 \u0434\u043e\u043c\u0430]', max_length=200, verbose_name='\u0410\u0434\u0440\u0435\u0441')),
                ('name', models.CharField(help_text='\u041d\u0430\u0441\u0435\u043b\u0451\u043d\u043d\u044b\u0439 \u043f\u0443\u043d\u043a\u0442 \u0432 \u043a\u043e\u0442\u043e\u0440\u043e\u043c \u043d\u0430\u0445\u043e\u0434\u0438\u0442\u0441\u044f \u0441\u0430\u043b\u043e\u043d', max_length=50, unique=True, verbose_name='\u0413\u043e\u0440\u043e\u0434')),
            ],
        ),
        migrations.AlterModelOptions(
            name='aboutpage',
            options={'verbose_name': 'About Page'},
        ),
        migrations.AlterModelOptions(
            name='servicecoastline',
            options={'verbose_name': 'Line text/price', 'verbose_name_plural': 'Lines tex/price'},
        ),
        migrations.AlterModelOptions(
            name='staffmember',
            options={'verbose_name': 'Master', 'verbose_name_plural': 'Masters'},
        ),
        migrations.AlterModelOptions(
            name='startpage',
            options={'verbose_name': 'Main page', 'verbose_name_plural': 'Version of main page'},
        ),
        migrations.AddField(
            model_name='service',
            name='filial',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='services', to='arinwest.Filial', to_field='name'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='staffmember',
            name='filial',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='masters', to='arinwest.Filial', to_field='name'),
            preserve_default=False,
        ),
    ]
