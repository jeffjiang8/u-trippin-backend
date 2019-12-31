# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# clothing_icon = File.read('./images/clothing.png')
# entertainment_icon = File.read('./images/entertainment.png')
# eyeware_icon = File.read('./images/eyeware.png')
# food_icon = File.read('./images/food.png')
# hygiene_icon = File.read('./images/hygiene.png')
# identification_icon = File.read('./images/identification.png')
# key_icon = File.read('./images/key.png')
# medicine_icon = File.read('./images/medicine.png')
# waterbottle_icon = File.read('./images/waterbottle.png')

Category.destroy_all
Item.destroy_all

Category.create(name: "clothing", avatar: "./images/clothing.png")
Category.create(name: "entertainment", avatar: "./images/entertainment.png")
Category.create(name: "eyeware", avatar: "./images/eyeware.png")
Category.create(name: "food", avatar: "./images/food.png")
Category.create(name: "hygiene", avatar: "./images/hygiene.png")
Category.create(name: "identification", avatar: "./images/identification.png")
Category.create(name: "key", avatar: "./images/key.png")
Category.create(name: "medicine", avatar: "./images/medicine.png")
Category.create(name: "waterbottle", avatar: "./images/waterbottle.png")

