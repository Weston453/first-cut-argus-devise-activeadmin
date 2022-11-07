# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(username: 'Test', password: 'password', password_confirmation: 'password', superadmin: true) 
User.create!(username: 'Test2', password: 'password', password_confirmation: 'password', superadmin: false) 