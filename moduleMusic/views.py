from django.contrib import auth
from django.contrib.auth.models import User
from django.http import request, HttpResponse
from django.shortcuts import render, redirect

from moduleMusic.models import Feedback, Showinsert, Cart, News


def ContactPageView(request):
    return render(request, 'contact.html')


def dashPage(request):
    return render(request, 'dashboard.html')


def StorePageView(request):
    return render(request, 'tickets.html')


def showReg(request):
    if request.method == 'POST':
        fn = request.POST['fn']
        ln = request.POST['ln']
        un = request.POST['un']
        em = request.POST['em']
        pw = request.POST['pw']

        user = User.objects.create_user(first_name=fn, last_name=ln, email=em, username=un, password=pw)
        user.save()
        return redirect('../login')

    else:
        return render(request, 'register.html')


def showLog(request):
    if request.method == 'POST':
        un = request.POST['user']
        pw = request.POST['pass']

        user = auth.authenticate(username=un, password=pw)
        if user is not None:
            auth.login(request, user)
            return redirect('../tickets')
        else:
            return HttpResponse('Invalid login credentials')
    else:
        return render(request, 'login.html')


def do_logout(request):
    auth.logout(request)
    return redirect('../../')


def getFeedback(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        message = request.POST['message']
        f = Feedback(name=name, email=email, message=message)
        f.save()
        return redirect('../')
    else:
        return render(request, 'index.html')


def getTick(request):
    show = Showinsert.objects.all()
    return render(request, 'tickets.html', {'showDetail': show})


def dashPageView(request, sid):
    venue = Showinsert.objects.values_list('showVenue', flat=True).filter(id=sid)
    date = Showinsert.objects.values_list('showDate', flat=True).filter(id=sid)
    price = Showinsert.objects.values_list('price', flat=True).filter(id=sid)
    userid = request.user.id
    c = Cart(showVenue=venue, showDate=date, price=price, userId_id=userid)
    c.save()
    return HttpResponse("Added to cart")


def getDashData(request):
    dashdata = Cart.objects.all().filter(userId_id=request.user.id)
    return render(request, 'dashboard.html', {'dash': dashdata})


def getNews(request):
    news = News.objects.all()
    return render(request, 'news.html', {'newsDetail': news})


def deleteCart(request, cid):
    c = Cart.objects.get(id=cid)
    c.delete()
    return render(request, 'index.html')
