
# Create your Forum views here.


from django.views.generic import ListView, DetailView, CreateView
from django.urls import reverse_lazy

from django.http import HttpResponse

from django.shortcuts import render, redirect
from django.core.mail import send_mail
from .forms import RegistrationForm

from django.contrib import messages

import random

# Global dictionary to store email and verification codes
verification_codes = {}

def send_verification_code(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        code = random.randint(100000, 999999)
        verification_codes[email] = code
        request.session['verification_email'] = email  # Save email in session
        send_mail(
            'HermandAI: Your Verification Code',
            f'Your code is: {code}',
            'li.lucasinocencio@gmail.com',  # Replace with your email
            [email],
            fail_silently=False,
        )
        return redirect('/insert_code')
    return redirect('/verification')

def verify_code(request):
    if request.method == 'POST':
        code = request.POST.get('code')
        email = request.session.get('verification_email')  # Retrieve email from session
        if email and verification_codes.get(email) == int(code):
            return redirect('register')
        else:
            print('Code not found')
            # Add error message
            return redirect('/insert_code')
    return redirect('/verification')


def register(request):
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Registration successful!')
            return redirect('/mainpage')  # Redirect after POST
        else:
            messages.error(request, 'Registration failed. Please check the entered data.')
    else:
        form = RegistrationForm()  # An unbound form

    return render(request, 'register.html', {'form': form})

def invitation(request):
    return render(request, 'register.html')

def landing_page(request):
    return render(request, 'index.html')



def base(request):
    return render(request, 'base.html')


def mainpage(request):
    return render(request, 'mainpage.html')


def dashboard(request):
    return render(request, 'dashboard.html')



def admin_panel(request):
    return render(request, 'admin-panel-page.html')


def ai_risk_profile(request):
    return render(request, 'ai-risk-profile.html')


def finance_management_features(request):
    return render(request, 'finance-management-features.html')




def email_verification(request):
    return render(request, 'verification.html')

def insert_code(request):
    return render(request, 'insert_code.html')


def to_page(request):
    return render(request, 'to-page.html')


