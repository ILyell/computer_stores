# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ComputerStore.create(name: "Main Store", location: "123 Easy ave.", repairs: true, rank: 2)
ComputerStore.create(name: "Second Store", location: "1322 Bigben rd.", repairs: false, rank: 3)
ComputerStore.create(name: "Third Store", location: "504 long rd.", repairs: true, rank: 1)