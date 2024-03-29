"""nemo URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
import static as static
from django.contrib import admin
from django.urls import path
from store.views import index, product_details, add_to_cart, cart, delete_cart, categories
from shop import settings
from accounts.views import signup, logout_user, login_user
from django.conf.urls.static import static

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", index, name="homepage"),
    path("categories/", categories, name="categories"),
    path("sigip/", signup, name="signup"),
    path("login/", login_user, name="login"),
    path("logout/", logout_user, name="logout"),
    path("product/<str:slug>", product_details, name="product"),
    path("product/<str:slug>/add-to-cart/", add_to_cart, name="add-to-cart"),
    path("cart/", cart, name="cart"),
    path("cart/delete/", delete_cart, name="delete_cart"),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
