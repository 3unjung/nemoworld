from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.


class Customer(AbstractUser):
    # name = models.CharField(max_length=150)
    address = models.CharField(max_length=200, blank=True)
    mobile = models.CharField(max_length=20, blank=True)
    city = models.CharField(max_length=100, blank=True)
    zipcode = models.IntegerField(default=00000, blank=True)
