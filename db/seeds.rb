# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create(username: 'AdminUser', role: 1, email: 'admin@gmail.com', password: "123admin")
user_2 = User.create(username: 'RegUser', role: 0, email: 'reg@gmail.com', password: "123reg")
