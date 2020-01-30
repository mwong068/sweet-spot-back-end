# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    User.create(name: Faker::Games::Overwatch.hero, username: Faker::Color.color_name, email: Faker::SlackEmoji.nature, password: Faker::SlackEmoji.objects_and_symbols, bio: Faker::Movies::StarWars.quote)

    Product.create(name: Faker::Food.dish, price: rand(1..50), quantity: rand(1..10), rating: rand(1..5), description: Faker::Food.description)
end