from django.contrib import admin

from store.models import Product, Order, Cart, Category
from supplier.models import Supplier

# Register your models here.
admin.site.register(Category)
admin.site.register(Product)
admin.site.register(Order)
admin.site.register(Cart)
admin.site.register(Supplier)