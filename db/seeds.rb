# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# seed.rb

# Define an array of names, descriptions, and completion statuses
names = ["Name 1", "Name 2", "Name 3", "Name 4", "Name 5", "Name 6"]
descriptions = ["Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6"]
completion_statuses = [true, false]

# Create six records
6.times do
  Todo.create(
    name: names.sample,
    description: descriptions.sample,
    completed: completion_statuses.sample
  )
end
