"""
URL configuration for core project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import include, path
from django.views.generic import TemplateView
from . import views

urlpatterns = [
    # Landing Page
    path('', views.landing_page),

    # Validating Account
    path('register', views.register, name='register'),
    path('verification', views.email_verification),
    path('insert_code', views.insert_code),

    path('send_verification_code', views.send_verification_code, name='send_verification_code'),
    path('verify_code', views.verify_code, name='verify_code'),

    path('mainpage', views.mainpage),

#the next three ones are new, made by manu

    path('teo', views.teo_page),

    path('uploadriskprofile', views.uploadriskprofile_page),

    path('downloadriskprofile', views.downloadriskprofile_page),

    # Go to Forum APP
    path("forum/", include("forum.urls")),  # Routing that is connected with the account module

    # Go to Admin APP
    path('admin/', admin.site.urls),

    # Go to Blog APP
    path('blog/', include('blog.urls')),  # Routing that is connected with the account module

    # Go to Account APP
    path('account/', include('account.urls')),  # Routing that is connected with the account module
]


