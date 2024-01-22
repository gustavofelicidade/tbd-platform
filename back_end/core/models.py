from django.db import models

class Registration(models.Model):
    name = models.CharField(max_length=50)
    surname = models.CharField(max_length=50)
    email = models.EmailField()
    business = models.CharField(max_length=100)
    professional = models.CharField(max_length=100)
    business_address = models.CharField(max_length=100)
    ceo_name = models.CharField(max_length=100)
    password = models.CharField(max_length=50)
    # Add any other fields you need
