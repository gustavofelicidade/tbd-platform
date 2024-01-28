from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import CustomUser, UserManager
from django.utils.html import format_html
from django.urls import reverse

class CustomUserAdmin(UserAdmin):
    model = CustomUser
    list_display = ('email', 'first_name', 'last_name', 'is_staff', 'is_approved', 'is_disapproved', 'approval_link')
    list_filter = ('is_staff', 'is_superuser', 'is_active', 'is_approved', 'is_disapproved')
    search_fields = ('email', 'first_name', 'last_name')
    ordering = ('email',)
    actions = ['list_users_by_email_action', 'delete_selected_users_action']

    def approval_link(self, obj):
        if obj.is_pending:
            return format_html('<a href="{}">Approve/Disapprove</a>', reverse('user_approval', args=[obj.username]))
        return "N/A"

    def list_users_by_email_action(self, request, queryset):
        users = UserManager.list_users_by_email()
        # You can handle this information differently. For example, display it or log it.
        for user in users:
            self.message_user(request, f"User ID: {user['id']}, Email: {user['email']}")
    list_users_by_email_action.short_description = "List users by email"

    def delete_selected_users_action(self, request, queryset):
        for user in queryset:
            response = UserManager.delete_user(user.id)
            self.message_user(request, response)
    delete_selected_users_action.short_description = "Delete selected users (Caution)"

admin.site.register(CustomUser, CustomUserAdmin)




# from django.contrib import admin
# from django.contrib.auth.admin import UserAdmin
# from .models import CustomUser, DatabaseReader
# from django.utils.html import format_html
# from django.urls import reverse
#
# class CustomUserAdmin(UserAdmin):
#     model = CustomUser
#     list_display = ('email', 'first_name', 'last_name', 'is_staff', 'is_approved', 'is_disapproved', 'approval_link')
#     list_filter = ('is_staff', 'is_superuser', 'is_active', 'is_approved', 'is_disapproved')
#     search_fields = ('email', 'first_name', 'last_name')
#     ordering = ('email',)
#     actions = ['list_users_by_email', 'delete_selected_users']
#
#     def approval_link(self, obj):
#         if obj.is_pending:
#             return format_html('<a href="{}">Approve/Disapprove</a>', reverse('user_approval', args=[obj.username]))
#         return "N/A"
#
#     def list_users_by_email(self, request, queryset):
#         db_reader = DatabaseReader('mydatabase')  # Adjust the path as needed
#         db_reader.connect()
#         users = db_reader.list_users_by_email()
#         for user in users:
#             print(user)  # Or handle this information differently
#         db_reader.close_connection()
#     list_users_by_email.short_description = "List users by email"
#
#     def delete_selected_users(self, request, queryset):
#         db_reader = DatabaseReader('mydatabase')  # Adjust the path as needed
#         db_reader.connect()
#         for user in queryset:
#             db_reader.delete_user(user.id)
#         db_reader.close_connection()
#     delete_selected_users.short_description = "Delete selected users (Caution)"
#
# admin.site.register(CustomUser, CustomUserAdmin)
