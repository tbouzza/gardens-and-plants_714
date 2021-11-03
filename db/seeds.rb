# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating Gardens'
# p Garden.create(
#   name: 'Heaven',
#   banner_url: 'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1932&q=80'
# )

# p Garden.create(
#   name: 'Miracle',
#   banner_url: 'https://images.unsplash.com/photo-1558293842-c0fd3db86157?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=722&q=80'
# )

20.times do
  p Tag.create(name: Faker::Superhero.suffix )
end

puts 'Created the gardens'
