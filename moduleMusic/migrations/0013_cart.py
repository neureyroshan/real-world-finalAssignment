# Generated by Django 3.0.2 on 2020-02-13 15:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moduleMusic', '0012_delete_cart'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cart',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('showVenue', models.CharField(max_length=255)),
                ('showDate', models.DateField()),
                ('price', models.FloatField()),
                ('userId', models.IntegerField()),
            ],
        ),
    ]
