# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Hey I am seeding"
Task.create!(description: 'Task 1', completed: false)
Task.create!(description: 'Task 2', completed: true)
Task.create!(description: 'Task 4', completed: false)
Task.create!(description: 'Task 5', completed: true)
puts "Hey I am done"