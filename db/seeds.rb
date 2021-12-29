# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: 'Mochila', category: 'Escola', price: 30)
Product.create(name: 'Caneta', category: 'Escola', price: 2)
Product.create(name: 'Notebook', category: 'Lazer', price: 2000)
Product.create(name: 'Mesa', category: 'Lazer', price: 400)