from django.urls import path
from moduleMusic import views

urlpatterns = [
    path('', views.getFeedback, name='home'),

    path('contact', views.ContactPageView, name='contact'),
    path('news', views.getNews, name='news'),
    path('tickets', views.getTick, name='tickets'),
    path('dashboard', views.getDashData, name='dashboard'),
    path('dashboard/<sid>', views.dashPageView, name='dashboard'),
    path('delete/<cid>', views.deleteCart, name='delete'),
    path('reg', views.showReg, name='reg'),
    path('login', views.showLog, name='login'),
    path('logout', views.do_logout, name='logout'),
]
