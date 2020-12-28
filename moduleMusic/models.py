from django.db import models
from django.contrib.auth.models import User
# Create your models here.
from django.conf import settings


class Feedback(models.Model):
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    message = models.TextField()


class Showinsert(models.Model):
    objects = None
    image = models.FileField()
    showVenue = models.CharField(max_length=255)
    showDate = models.DateField()
    price = models.FloatField()


class Cart(models.Model):
    objects = None
    showVenue = models.CharField(max_length=255)
    showDate = models.DateField()
    price = models.FloatField()
    userId = models.ForeignKey(User, on_delete=models.CASCADE)


class News(models.Model):
    objects = None
    newsImage = models.FileField()
    postDate = models.DateField()
    newsTitle = models.CharField(max_length=255)
    news = models.TextField()

