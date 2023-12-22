
# Create your Forum views here.


from django.views.generic import ListView, DetailView, CreateView
from django.urls import reverse_lazy

from .models import Thread, Post
from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    return HttpResponse("Hello, world. You're at the Forum index.")


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


class ThreadListView(ListView):
    model = Thread


class ThreadDetailView(DetailView):
    model = Thread


class CreateThreadView(CreateView):
    model = Thread
    fields = ['title']
    success_url = reverse_lazy('thread_list')


class CreatePostView(CreateView):
    model = Post
    fields = ['content']

    def form_valid(self, form):
        form.instance.thread_id = self.kwargs['pk']
        return super().form_valid(form)

    def get_success_url(self):
        return reverse_lazy('thread_detail', kwargs={'pk': self.kwargs['pk']})
