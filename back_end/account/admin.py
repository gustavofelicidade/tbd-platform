from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import CustomUser
from django.utils.html import format_html
from django.urls import reverse
from django.utils.http import urlencode

class CustomUserAdmin(UserAdmin):
    model = CustomUser
    list_display = ('email', 'first_name', 'last_name', 'is_staff', 'is_approved', 'is_disapproved', 'approval_link')
    list_filter = ('is_staff', 'is_superuser', 'is_active', 'is_approved', 'is_disapproved')
    search_fields = ('email', 'first_name', 'last_name')
    ordering = ('email',)
    fieldsets = (
        (None, {'fields': ('email', 'password', 'name', 'surname', 'business_name')}),
        ('Permissions', {'fields': ('is_staff', 'is_active', 'is_approved', 'is_disapproved')}),
        ('Personal info', {'fields': ('first_name', 'last_name')}),
    )

    # In your CustomUserAdmin class in admin.py
    def approval_link(self, obj):
        if obj.is_pending:
            return format_html('<a href="{}">Approve/Disapprove</a>', reverse('user_approval', args=[obj.username]))
        return "N/A"


# Register your models here.
admin.site.register(CustomUser, CustomUserAdmin)
