# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
juliana = User.create!(username: 'Juliana', password: 'password', password_confirmation: 'password', email: 'test1@test.com')
may = User.create!(username: 'May', password: 'password', password_confirmation: 'password', email: 'test2@test.com')


juliana.posts.create!(title: 'Post 1', body: 'This is post one body for user 1')
juliana.posts.create!(title: 'Post 2', body: 'This is post two body for user 1')
may.posts.create!(title: 'Post 1', body: 'This is post one body for user 2')
may.posts.create!(title: 'Post 2', body: 'This is post two body for user 2')