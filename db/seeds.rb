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
jean = User.create(email: "jean@gmail.com", password: "azerty")
edouard = User.create(email: "edouard@gmail.com", password: "azerty")
alice = User.create(email: "alice@gmail.com", password: "azerty")

photo_quentin = 'https://pbs.twimg.com/profile_images/618004273998249984/-46_Q9Ca.jpg'
photo_anne_sophie = 'https://avatars1.githubusercontent.com/u/25099604?v=3&s=460'
photo_camille = 'https://avatars2.githubusercontent.com/u/21193933?v=3&s=460'
photo_jean = 'http://cdn77.sadanduseless.com/wp-content/uploads/2015/05/worst9.jpg'
photo_edouard = 'http://www.goldenmoustache.com/wp-content/uploads/2015/06/worst8.jpg'
photo_alice = 'http://www.teamjimmyjoe.com/wp-content/uploads/2012/11/Bad-Family-Photos-80s-Yearbook-.jpg'

quentin.photo_url = photo_quentin
anne_sophie.photo_url = photo_anne_sophie
camille.photo_url = photo_camille
jean.photo_url = photo_jean
edouard.photo_url = photo_edouard
alice.photo_url = photo_alice

cat_sitting_offer_quentin = CatSittingOffer.create(
  {title:"Wonderful catsitter" , localisation: "Paris", description:"Love cat since my childhood", user: quentin})

cat_sitting_offer_anne_sophie = CatSittingOffer.create(
  {title:"Catsitting is life!" , localisation: "Paris", description:"Love cat since my childhood", user: anne_sophie})

cat_sitting_offer_camille = CatSittingOffer.create(
  {title:"Lovely house for a cat" , localisation: "Paris", description:"Love cat since my childhood", user: camille})

cat_sitting_offer_jean = CatSittingOffer.create(
  {title:"I really love cats" , localisation: "New-York", description:"Love cat since my childhood", user: jean})

cat_sitting_offer_edouard = CatSittingOffer.create(
  {title:"Looking for a cat friend" , localisation: "Lyon", description:"Love cat since my childhood", user: edouard})

cat_sitting_offer_alice = CatSittingOffer.create(
  {title:"I can talk to cats" , localisation: "Bordeaux", description:"Love cat since my childhood", user: alice})

cat_sitting_offer_quentin1 = CatSittingOffer.create(
  {title:"Wonderful catsitter" , localisation: "Dublin", description:"Love cat since my childhood", user: quentin})

cat_sitting_offer_anne_sophie1 = CatSittingOffer.create(
  {title:"Catsitting is life!" , localisation: "Tokyo", description:"Love cat since my childhood", user: anne_sophie})

cat_sitting_offer_camille1 = CatSittingOffer.create(
  {title:"Lovely house for a cat" , localisation: "Paris", description:"Love cat since my childhood", user: camille})

cat_sitting_offer_jean1 = CatSittingOffer.create(
  {title:"I really love cats" , localisation: "Paris", description:"Love cat since my childhood", user: jean})

cat_sitting_offer_edouard1 = CatSittingOffer.create(
  {title:"Looking for a cat friend" , localisation: "Londres", description:"Love cat since my childhood", user: edouard})

cat_sitting_offer_alice1 = CatSittingOffer.create(
  {title:"I can talk to cats" , localisation: "Paris", description:"Love cat since my childhood", user: alice})

urls1 = [
  'https://s-media-cache-ak0.pinimg.com/originals/0e/17/71/0e1771711821d502667520aa116b5d3e.jpg',
  'http://chrisleavins.typepad.com/chrisleavins/images/2008/01/12/formal_catportrait_walter_elizabeth.jpg',
  'http://www.book-a-flat.com/images/paris-salon-2.jpg'
]

urls2 = [
  'http://www.dog-and-cat-design.com/2802-thickbox_default/griffoir-niche-en-carton-pour-chat-brochhaus-jnr.jpg',
  'https://img.buzzfeed.com/buzzfeed-static/static/2014-09/29/17/enhanced/webdr10/enhanced-2230-1412025361-9.jpg',
  'http://www.chicroomproperties.com/thumb/property-gallery/items/166/furnished-studio-flat-for-rent-mid-term-in-barcelona-gothic-2.jpg'
]

urls3 = [
  'https://archzine.fr/wp-content/uploads/2016/02/niche-pour-chat-maison-pour-chat-galet.jpg',
  'http://justsomething.co/wp-content/uploads/2014/08/men-and-cats-11.jpg',
  'http://cdn.homedsgn.com/wp-content/uploads/2014/06/Modern-Flat-in-Kyiv-04-850x566.jpg'

]

urls4 = [
  'https://archzine.fr/wp-content/uploads/2016/02/niche-pour-chat-maison-pour-chat-galet.jpg',
  'https://img.buzzfeed.com/buzzfeed-static/static/2014-09/29/15/enhanced/webdr11/enhanced-23445-1412017320-11.jpg',
  'http://cdn.homedsgn.com/wp-content/uploads/2014/06/Modern-Flat-in-Kyiv-04-850x566.jpg'
]

urls5 = [
  'https://archzine.fr/wp-content/uploads/2016/02/niche-pour-chat-maison-pour-chat-galet.jpg',
  'https://s-media-cache-ak0.pinimg.com/originals/5e/30/9f/5e309f4b980f7ece8b3346a4025ae0b1.jpg',
  'http://cdn.homedsgn.com/wp-content/uploads/2014/06/Modern-Flat-in-Kyiv-04-850x566.jpg'
]

urls6 = [
  'https://archzine.fr/wp-content/uploads/2016/02/niche-pour-chat-maison-pour-chat-galet.jpg',
  'http://www.lifewithcats.tv/wp-content/uploads/2016/07/awkward-5.jpg',
  'http://cdn.homedsgn.com/wp-content/uploads/2014/06/Modern-Flat-in-Kyiv-04-850x566.jpg'
]

cat_sitting_offer_quentin.photo_urls = urls1
cat_sitting_offer_anne_sophie.photo_urls = urls2
cat_sitting_offer_camille.photo_urls = urls3
cat_sitting_offer_jean.photo_urls = urls4
cat_sitting_offer_edouard.photo_urls = urls5
cat_sitting_offer_alice.photo_urls = urls6


booking_quentin = Booking.create!({start_date: Date.today , end_date: Date.today + 2.days, cat_sitting_offer: cat_sitting_offer_camille, user: quentin, status: "pending"})
booking_anne_sophie = Booking.create!({start_date:Date.today + 2.days , end_date:Date.today + 4.days, cat_sitting_offer: cat_sitting_offer_quentin, user: anne_sophie, status: "pending"})
booking_camille = Booking.create!({start_date: Date.today + 4.days , end_date: Date.today + 6.days, cat_sitting_offer: cat_sitting_offer_anne_sophie, user: camille, status: "pending"})

puts "ok"

