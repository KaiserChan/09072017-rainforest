# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names=["Hug", "Pressure", "Mystery Box", "Uninvited Advice", "Nostril Hair Necklace"]
descriptions=["You feel much better with this show of love", "Release! You live a healthy life without this but you can probably do with a dose of Hug", "Fulfills your desires and fantasies ... if you know what I mean ...", "Whether you like it or not, you are getting it!", "Makes you the most popular kid in the room!"]
5.times do
Product.create name:names.sample, description: descriptions.sample, price_in_cents:rand(1..100)
end
