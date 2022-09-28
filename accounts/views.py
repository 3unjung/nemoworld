from django.shortcuts import render, redirect
from django.contrib.auth import get_user_model, login, logout, authenticate

# récupère le modèle utilisateur
User = get_user_model()


# Create your views here.

def signup(request):
    if request.method == "POST":
        # traitement du formulaire
        username = request.POST.get("username")
        password = request.POST.get("password")
        firstname = request.POST.get("firstname")
        lastname = request.POST.get("lastname")
        email = request.POST.get("email")
        password = request.POST.get("password")
        user = User.objects.create_user(username=username, password=password, first_name=firstname, last_name=lastname,
                                        email=email)
        login(request, user)
        return redirect("homepage")

    return render(request, "accounts/signup.html")


def login_user(request):
    if request.method == "POST":
        # connexion
        username = request.POST.get("username")
        password = request.POST.get("password")
        print(f"============================= {username}, {password}")

        # vérifier si les informations envoyées correspondent
        user = authenticate(username=username, password=password)
        if user:
            login(request, user)
            return redirect("homepage")

    return render(request, 'accounts/login.html')


def logout_user(request):
    logout(request)
    return redirect("homepage")
