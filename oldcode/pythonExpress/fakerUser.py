from faker import Faker
from faker.providers import internet
# URL For Faker: https://faker.readthedocs.io/en/master/
# fake = Faker() -- Default Value (En-US) Locale.
# fake = Faker('it_IT') -- Italian Locale
fake = Faker('es_ES') # -- My Dream Location: Spain.

makeName = fake.name()
# 'Lucy Cechtelar'

makeAddress = fake.address()
# '426 Jordy Lodge
#  Cartwrightshire, SC 88120-6700'

makeText = fake.text()
# 'Sint velit eveniet. Rerum atque repellat voluptatem quia rerum. Numquam excepturi
#  beatae sint laudantium consequatur. Magni occaecati itaque sint et sit tempore. Nesciunt
#  amet quidem. Iusto deleniti cum autem ad quia aperiam.
#  A consectetur quos aliquam. In iste aliquid et aut similique suscipit. Consequatur qui
#  quaerat iste minus hic expedita. Consequuntur error magni et laboriosam. Aut aspernatur
#  voluptatem sit aliquam. Dolores voluptatum est.
#  Aut molestias et maxime. Fugit autem facilis quos vero. Eius quibusdam possimus est.
#  Ea quaerat et quisquam. Deleniti sunt quam. Adipisci consequatur id in occaecati.
#  Et sint et. Ut ducimus quod nemo ab voluptatum.'

for _ in range(10):
    print(fake.name())

# 'Elda Palumbo'
# 'Pacifico Giordano'
# 'Sig. Avide Guerra'
# 'Yago Amato'
# 'Eustachio Messina'
# 'Dott. Violante Lombardo'
# 'Sig. Alighieri Monti'
# 'Costanzo Costa'
# 'Nazzareno Barbieri'
# 'Max Coppola'

print(makeName)
print(makeAddress)
print(makeText)
fake.add_provider(internet)
print(fake.ipv4_private())
