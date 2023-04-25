# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'dineth@ga.co', :password => 'chicken'
u2 = User.create :email => 'dad@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Journal.destroy_all

j1 = Journal.create :title => 'The Game Winner', :story => 'Step back jumper for the win'
j2 = Journal.create :title => 'My Monstera', :story => 'My monstera is too big'
puts "#{ Journal.count } stories"

Photo.destroy_all

j1 = Photo.create :image => 'https://library.sportingnews.com/styles/crop_style_16_9_desktop_webp/s3/2021-08/kobe-bryants-game-winner-vs-portland-trail-blazers-in-2004_ml78lbvs63gk1fmtr5oauzqzp.jpeg.webp?itok=OiwOUd8g', :caption => 'Kobe', :date => '14th April 2004'
j2 = Photo.create :image => 'https://oddspotplants.com.au/wp-content/uploads/2021/04/Variegated-Monstera-Deliciosa-Borsigiana.jpg', :caption => 'His name Jeff', :date => '28th December 2022'
puts "#{ Photo.count } photos"