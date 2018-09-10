# This dile should contain all the record creation needed to seed the database with its dedault values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord od the Rings' }])
#   Character.create(name: 'Luke', movie: movies.dirst)

User.destroy_all
u1 = User.create :email => 'mikea@ga.co', :password => 'chicken', :admin => 1
u2 = User.create :email => 'kyleb@ga.co', :password => 'chicken', :admin => 0
u3 = User.create :email => 'pikec@ga.co', :password => 'chicken', :admin => 0
#
Restaurant.destroy_all
r1 = Restaurant.create :name => "China Doll"
r2 = Restaurant.create :name => "Apollo"
r3 = Restaurant.create :name => "Sushi Train"
r4 = Restaurant.create :name => "Cruise"
r5 = Restaurant.create :name => "Sorento"
r6 = Restaurant.create :name => "Balkan"
r7 = Restaurant.create :name => "Rome"
r8 = Restaurant.create :name => "Tango"

Nationality.destroy_all
n1 = Nationality.create :name => "Greek"
n2 = Nationality.create :name => "Chinese"
n3 = Nationality.create :name => "Japanese"
n4 = Nationality.create :name => "French"
n5 = Nationality.create :name => "Thai"
n6 = Nationality.create :name => "Indian"
n7 = Nationality.create :name => "Italian"
n8 = Nationality.create :name => "Spanish"
#
Category.destroy_all
c1 = Category.create :name => 'Vegeterian'
c2 = Category.create :name => 'Seafood'
c3 = Category.create :name => 'Pizza'
c4 = Category.create :name => 'Grill'
c5 = Category.create :name => 'Tapas'
c6 = Category.create :name => 'Gluten-free'

Dish.destroy_all
d1 = Dish.create :name => "Dumpling"
d2 = Dish.create :name => "Laksa"
d3 = Dish.create :name => "Garlic Prawn"
d4 = Dish.create :name => "Ginger Swordfish"
d5 = Dish.create :name => "Calamares a la Romana"
d6 = Dish.create :name => "Tortilla"
d7 = Dish.create :name => "Masala dosa"
d8 = Dish.create :name => "Seafood paella"
d9 = Dish.create :name => "Chicken parm"

#
#
# ## Associations ################################################################
# foodss and restaurants
d1.restaurants << r1
d2.restaurants << r2
d3.restaurants << r3
d4.restaurants << r4
d5.restaurants << r5
d6.restaurants << r6
d7.restaurants << r7

# nationalities and restaurants
n1.restaurants << r1
n2.restaurants << r2
n3.restaurants << r3
n4.restaurants << r4
n5.restaurants << r5
n6.restaurants << r6
n7.restaurants << r7

c1.dishes << d1 << d7
c2.dishes << d2 << d8
c3.dishes << d3 << d9
c4.dishes << d4
c5.dishes << d5
c6.dishes << d6

# categories and restaurants
# r1.categories << c1 << c2
# r2.categories << c3
# r3.categories << c4 << c5
