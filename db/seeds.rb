# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
CatSittingOffer.destroy_all
User.destroy_all
quentin = User.create(email: "quentin@gmail.com", password: "azerty")
anne_sophie = User.create(email: "anne_sophie@gmail.com", password: "azerty")
camille = User.create(email: "camille@gmail.com", password: "azerty")



cat_sitting_offer_quentin = CatSittingOffer.create(
  {title:"Quentin loves cat" , localisation: "Paris", description:"Love cat since my childhood", user: quentin})

cat_sitting_offer_anne_sophie = CatSittingOffer.create(
  {title:"Anne-Sophie loves cat" , localisation: "Paris", description:"Love cat since my childhood", user: anne_sophie})

cat_sitting_offer_camille = CatSittingOffer.create(
  {title:"Camille loves cat" , localisation: "Paris", description:"Love cat since my childhood", user: camille})

urls1 = [
  'https://s-media-cache-ak0.pinimg.com/564x/8f/b0/77/8fb077e97b62cfab2a4dec108ac7112f.jpg',
  'http://i.imgur.com/kOKQVaS.png'
]

urls2 = [
  'https://cdnb.artstation.com/p/assets/images/images/001/863/575/large/irakli-nadar-artstation-da.jpg?1453903033',
  'http://chrisleavins.typepad.com/chrisleavins/images/2008/01/12/formal_catportrait_walter_elizabeth.jpg'
]

urls3 = [
  'https://s-media-cache-ak0.pinimg.com/originals/e6/37/23/e6372301b1942d17fa947c99e14bc384.jpg',
  'https://i.ytimg.com/vi/ZUD4GqlOHYs/hqdefault.jpg'

]

cat_sitting_offer_quentin.photo_urls = urls1
cat_sitting_offer_anne_sophie.photo_urls = urls2
cat_sitting_offer_camille.photo_urls = urls3



booking_quentin = Booking.create({start_date: Date.today , end_date: Date.today + 2.days, cat_sitting_offer: cat_sitting_offer_camille, user: quentin})
booking_anne_sophie = Booking.create({start_date:Date.today + 2.days , end_date:Date.today + 4.days, cat_sitting_offer: cat_sitting_offer_quentin, user: anne_sophie})
booking_camille = Booking.create({start_date: Date.today + 4.days , end_date: Date.today + 6.days, cat_sitting_offer: cat_sitting_offer_anne_sophie, user: camille})

puts "ok"

