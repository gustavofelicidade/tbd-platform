from django.urls import include, path
from django.views.generic import TemplateView

from . import views

urlpatterns = [
    # path("", views.index, name="index"),
    path('', views.homepage),
    path('dashboard.html', views.dashboard),
    path('base.html', views.base),
    path('admin-panel-page.html', views.admin_panel),
    path('ai-risk-profile.html', views.ai_risk_profile),
    path('finance-management-features.html', views.finance_management_features),
    path('register.html', views.invitation),
    path('to-page.html', views.to_page),

]