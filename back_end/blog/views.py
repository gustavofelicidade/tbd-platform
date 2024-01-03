from django.shortcuts import render

# Create your views here.

def base_blog(request):
    return render(request, 'home_blog.html')