from django.contrib import admin  
from django.urls import path
from django.conf import settings
from . import views  

urlpatterns = [  
    path('',views.index, name='index'),
    path('mcards/', views.mcards, name='mcards'),
    path('cards/<mc>/', views.cards, name='cards'),
    path('about', views.about, name='about'),
    path('services', views.services, name='services'),
    path('acc/', views.acc, name='acc'),
    path('contact', views.contact, name='contact'),
    path('signup',views.signup,name='signup'),
    path('loginview/',views.loginview,name='loginview'),
    path('logoutview/',views.logoutview,name='logoutview'),
    path('cdetails/<card>/<mch>/', views.cdetails,name='cdetails'),
    path('payment1/<cardid>/<mch2>/', views.payment1,name='payment1'),
    path('mailus',views.mailus,name='mailus'),
    path('sub',views.sub,name="sub"),
]
