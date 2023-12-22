
# Create your Forum views here.


from django.views.generic import ListView, DetailView, CreateView
from django.urls import reverse_lazy


from django.shortcuts import render
from django.http import HttpResponse


def landing_page(request):
    return render(request, 'index.html')


def base(request):
    return render(request, 'base.html')


def homepage(request):
    return render(request, 'homepage.html')


def dashboard(request):
    return render(request, 'dashboard.html')



def admin_panel(request):
    return render(request, 'admin-panel-page.html')


def ai_risk_profile(request):
    return render(request, 'ai-risk-profile.html')


def finance_management_features(request):
    return render(request, 'finance-management-features.html')


def invitation(request):
    return render(request, 'invitation.html')


def to_page(request):
    return render(request, 'to-page.html')


