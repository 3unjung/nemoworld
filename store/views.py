from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from django.urls import reverse

# Create your views here.

from store.models import Product, Cart, Order, Category


def index(request):
    # return HttpResponse("réussis")

    # récupère les donnéess de la classe Product
    products = Product.objects.all()
    return render(request, 'store/index.html', context={"products": products})


def categories(request):
    parents = Category.objects.exclude(parent_id=None)
    print(f"====================>REGARDE ICI TRIPLE BAKA{parents}")
    return render(request, "store/categories.html", context={"parent": parents})


def product_details(request, slug):
    product = get_object_or_404(Product, slug=slug)
    return render(request, 'store/details.html', context={"product": product})


def add_to_cart(request, slug):
    user = request.user
    product = get_object_or_404(Product, slug=slug)

    # récupère le panier de l'utilisateur
    cart, _ = Cart.objects.get_or_create(user=user)
    order, created = Order.objects.get_or_create(user=user, ordered=False, product=product)

    if created:
        cart.orders.add(order)
        cart.save()

    # si le panier existe déjà
    else:
        order.quantity += 1
        order.save()
    return redirect(reverse("product", kwargs={"slug": slug}))


def cart(request):
    cart = get_object_or_404(Cart, user=request.user)
    orders = cart.orders.all()
    total = 0
    count = 0
    countAndPricePerProduct = {}
    """c = orders
    print(f"LE PRINT QUE JAI FAIS =========================={c}")"""

    for order in orders:
        order.product.description = order.product.description[:50]
        total += order.product.price * order.quantity
        curQuantity = order.quantity
        count += curQuantity
        unitPrice = order.product.price

        order.totPrice = curQuantity * unitPrice

        """curProduct = order.product
        if curProduct not in countAndPricePerProduct:
            prevQuantity, prevPrice = (0, 0)
        else:
            prevQuantity, prevPrice = countAndPricePerProduct[curProduct]

        countAndPricePerProduct[curProduct] = (prevQuantity + curQuantity, prevPrice + curQuantity * curProduct.price)"""

    """print(f"countAndPricePerProduct : {countAndPricePerProduct}")
    for product, countAndPrice in countAndPricePerProduct.items():
        count, price = countAndPrice
        print(f"Product : {product}, count : {count}, price : {price}")"""

    return render(request, 'store/cart.html',
                  context={"orders": orders, "total": total, "count": count})#, "cappp": countAndPricePerProduct})


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
