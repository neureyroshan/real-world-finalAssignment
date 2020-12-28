from django.contrib import admin
# Register your models here.
from moduleMusic.models import Showinsert, News, Cart, Feedback

admin.site.register(Showinsert)
admin.site.register(News)
admin.site.register(Cart)
admin.site.register(Feedback)
