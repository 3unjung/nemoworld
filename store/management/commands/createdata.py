import random

from django.core.management import BaseCommand
from faker import Faker
import faker.providers
from store.models import Category, Product
import requests
from PIL import Image
import io

CATEGORIES = [
    "Petromyzontides",
    "Chondrichtyens",
    "Actinoptérygiens",
    "Sarcoptérygiens",
    "Itezed",
]

PRODUCT = [
    "Able de Heckel",
    "Anguille",
    "Barbeau",
    "Blackbass",
    "Bouviere",
    "Breme",
    "Brochet",
    "Carassin",
    "Carpe",
    "Chevesne",
    "Ecrevisses",
]


# API Random Image https://github.com/topics/random-images
def save_random_fish_skiffybot(filename):
    # get image from json
    img_url_json = requests.get("https://api.skiffybot.xyz/api/v1/animals/fish").json()
    # convert content image by bytes
    img_bytes = requests.get(img_url_json["message"]).content
    image = Image.open(io.BytesIO(img_bytes))
    # download the images
    # image.save(f"/home/quinella/Dropbox/poisson/media/photos/{filename}")
    image.save(f"D:\Dropbox\poisson\media\photos\{filename}")


class Provider(faker.providers.BaseProvider):
    def ecommerce_category(self):
        return self.random_element(CATEGORIES)

    def ecommerce_products(self):
        return self.random_element(PRODUCT)


class Command(BaseCommand):
    help = "Command information"

    def handle(self, *args, **kwargs):
        print("test success")

        fake = Faker("fr_fr")
        fake.add_provider(Provider)

        # print(fake.ecommerce_products())

        # uncomment this for create some category
        """for _ in range(5):
            d = fake.unique.ecommerce_category()
            # Category.objects.create(name=d, slug=d)"""

        # or comment this for stopped the create product process
        for _ in range(10):
            # repeat the random until get 10 products with a unique name
            name = fake.unique.ecommerce_products()
            slug = name
            price = random.randint(1, 999)
            description = fake.text(max_nb_chars=200)
            category_name = fake.ecommerce_category()
            category = Category.objects.create(name=category_name, slug=category_name)
            img_filename = fake.file_name(extension='png')
            save_random_fish_skiffybot(img_filename)

            # manage and persist
            Product.objects.create(species=name, slug=slug, price=price, description=description,
                                   category=category, thumbnail=f"photos/{img_filename}")

        check_category = Product.objects.all().count()
        check_product = Product.objects.all().count()
        self.stdout.write(self.style.SUCCESS(f"NUMBER OF PRODUCTS: {check_product}"))
