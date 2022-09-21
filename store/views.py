from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from django.urls import reverse

# Create your views here.

from store.models import Product, Cart, Order


def index(request):
    # return HttpResponse("réussis")

    # récupère les donnéess de la classe Product
    products = Product.objects.all()
    return render(request, 'store/index.html', context={"products": products})


def product_details(request, slug):
    product = get_object_or_404(Product, slug=slug)
    return render(request, 'store/details.html', context={"product": product})

def add_to_cart(request, slug):
    user = request.user
    product = get_object_or_404(Product, slug=slug)

    # récupère le panier de l'utilisateur
    cart, _ = Cart.objects.get_or_create(user=user)
    order, created = Order.objects.get_or_create(user=user, ordered=False,product=product)

    if created:
        cart.orders.add(order)
        cart.save()

    # si le panier existe déjà
    else:
        order.quantity += 1
        order.save()

    return redirect(reverse("product",kwargs={"slug": slug}))

def cart(request):
    cart = get_object_or_404(Cart, user=request.user)
    return render(request, 'store/cart.html', context={"orders": cart.orders.all()})


def delete_cart(request):

    # sans l'opérateur walrus
    # cart = request.user.cart
    # if cart:
    #     cart.orders.all().delete()
    #     cart.delete()
    # return redirect("homepage")

    if cart := request.user.cart:
        cart.delete()

    return redirect("homepage")


