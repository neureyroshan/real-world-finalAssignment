# Generated by Django 3.0.2 on 2020-02-13 11:46

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('moduleMusic', '0010_cart'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cart',
            name='user',
        ),
    ]