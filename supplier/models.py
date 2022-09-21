from django.db import models

# Create your models here.


class Supplier(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    zipcode = models.CharField(max_length=50)
    city = models.CharField(max_length=100)
    siren = models.CharField(max_length=50)
    telephone = models.CharField(max_length=20)
    email = models.EmailField(max_length=255, blank=True, null=True)

    def __str__(self):
        return f"{self.name} siren : ({self.siren})"