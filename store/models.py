from django.db import models
from django.urls import reverse
from django.utils import timezone
from shop.settings import AUTH_USER_MODEL
from supplier.models import Supplier


# Create your models here.

# class Category(models.Model):
#     name= models.CharField(max_length=100)
#     parent = models.ForeignKey("self", on_delete=models.CASCADE, blank=True, null=True)


class Category(models.Model):
    parent = models.ForeignKey('self', related_name='children', on_delete=models.CASCADE, blank=True, null=True)
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)

    def __str__(self):
        return f"{self.name} ({self.slug})"


class Product(models.Model):
    species = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    price = models.FloatField(default=0.0)
    quantity = models.IntegerField(default=0)
    description = models.TextField(blank=True)
    thumbnail = models.ImageField(upload_to="photos", blank=True, null=True)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    supplier = models.ForeignKey(Supplier, on_delete=models.CASCADE, blank=True, null=True)

    def __str__(self):
        return f"{self.species}, ({self.quantity})"

    def get_absolute_url(self):
        return reverse("product", kwargs={"slug": self.slug})


class Order(models.Model):
    user = models.ForeignKey(AUTH_USER_MODEL, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
    ordered = models.BooleanField(default=False)
    ordered_date = models.DateTimeField(blank=True, null=True)


    def __str__(self):
        return f"{self.product.species} ({self.quantity})"


class Cart(models.Model):
    # un utiisateur ne peut avoir que un seul panier
    # user = models.ForeignKey(unique=True)
    user = models.OneToOneField(AUTH_USER_MODEL, on_delete=models.CASCADE)
    orders = models.ManyToManyField(Order)

    def __str__(self):
        return self.user.username

    def delete(self, *args, **kwargs):
        for order in self.orders.all():
            order.orderded = True
            # enregistre l'heure sur UTC+0
            order.ordered_date = timezone.now()
            order.save()

        self.orders.clear()
        super().delete(*args, **kwargs)
