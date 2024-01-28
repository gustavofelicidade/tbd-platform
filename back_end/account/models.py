# Create your models here.
from django.contrib.auth.models import AbstractUser
from django.db import models
from django.utils.translation import gettext_lazy as _

import sqlite3

class CustomUser(AbstractUser):
    name = models.CharField(max_length=255)
    surname = models.CharField(max_length=255)
    business_name = models.CharField(max_length=255)
    business_address = models.CharField(max_length=255)
    ceo_full_name = models.CharField(max_length=255)
    job_title = models.CharField(max_length=255)
    current_company = models.CharField(max_length=255)
    referral = models.CharField(max_length=255)
    is_approved = models.BooleanField(default=False)
    is_disapproved = models.BooleanField(default=False)
    is_pending = models.BooleanField(default=True)
    reasons = models.CharField(max_length=255)
    subscription_type = models.CharField(max_length=255)

    groups = models.ManyToManyField(
        'auth.Group',
        verbose_name=_('groups'),
        blank=True,
        help_text=_(
            'The groups this user belongs to. A user will get all permissions '
            'granted to each of their groups.'
        ),
        related_name="customuser_groups",
        related_query_name="customuser",
    )
    user_permissions = models.ManyToManyField(
        'auth.Permission',
        verbose_name=_('user permissions'),
        blank=True,
        help_text=_('Specific permissions for this user.'),
        related_name="customuser_user_permissions",
        related_query_name="customuser",
    )


class DatabaseReader:
    def __init__(self, db_path):
        self.db_path = db_path

    def connect(self):
        try:
            self.connection = sqlite3.connect(self.db_path)
            self.cursor = self.connection.cursor()
        except sqlite3.Error as e:
            print(f"An error occurred while connecting to the database: {e}")

    def list_users_by_email(self):
        try:
            self.cursor.execute("SELECT id, email FROM account_customuser;")
            return self.cursor.fetchall()
        except sqlite3.Error as e:
            print(f"An error occurred while listing users: {e}")

    def delete_user(self, user_id):
        try:
            self.cursor.execute("DELETE FROM account_customuser WHERE id = ?", (user_id,))
            self.connection.commit()
        except sqlite3.Error as e:
            print(f"An error occurred while deleting the user: {e}")

    def close_connection(self):
        if self.connection:
            self.connection.close()