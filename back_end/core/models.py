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


class Risk(models.Model):
    title = models.CharField(max_length=255)
    rating = models.CharField(max_length=100)
    total_comments = models.IntegerField(default=0)
    up_votes = models.IntegerField(default=0)
    down_votes = models.IntegerField(default=0)
    rank = models.IntegerField()
    # You can add more fields as per your requirement

    def __str__(self):
        return self.title