# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
store_1 = ComputerStore.create(name: "Main Store", location: "123 Easy ave.", repairs: true, rank: 2)
store_2 = ComputerStore.create(name: "Second Store", location: "1322 Bigben rd.", repairs: false, rank: 3)
store_3 = ComputerStore.create(name: "Third Store", location: "504 long rd.", repairs: true, rank: 1)

store_1.computer.create(name: "Threadripper", price: 1299.99, on_sale: true)
store_1.computer.create(name: "Intel 13900k", price: 1999.99, on_sale: false)
store_2.computer.create(name: "AMD 7800x3d", price: 1799.99, on_sale: true)
store_2.computer.create(name: "Intel 12900k", price: 1199.99, on_sale: false)
store_3.computer.create(name: "AMD 5600x", price: 1099.99, on_sale: true)
store_3.computer.create(name: "Intel 9700k", price: 800.00, on_sale: false)
