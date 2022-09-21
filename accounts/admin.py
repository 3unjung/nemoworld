from django.contrib import admin

from accounts.models import Customer

# Register your models here.

# affiche les utilisateurs sur l'espace admin
admin.site.register(Customer)