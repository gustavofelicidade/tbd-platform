from django.urls import include, path
from django.views.generic import TemplateView

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path('templates/', TemplateView.as_view(template_name='admin-panel-page.html')),
    path('templates/', TemplateView.as_view(template_name='base.html')),
    path('templates/', TemplateView.as_view(template_name='ai-risk-profile.html')),
    path('templates/', TemplateView.as_view(template_name='finance-management-features')),
    path('templates/', TemplateView.as_view(template_name='invitation.html')),
    path('templates/', TemplateView.as_view(template_name='to-page.html')),

]