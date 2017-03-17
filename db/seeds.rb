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
  {title:"Wonderful catsitter" , localisation: "2 rue de la paix,Paris", description:"Love cat since my childhood", user: quentin})

cat_sitting_offer_quentin1 = CatSittingOffer.create(
  {title:"Wonderful catsitter" , localisation: "6 rue du dragon, Paris", description:"Love cat since my childhood", user: quentin})


cat_sitting_offer_anne_sophie = CatSittingOffer.create(
  {title:"Catsitting is life!" , localisation: "3 boulevard Arago, Paris", description:"Love cat since my childhood", user: anne_sophie})

cat_sitting_offer_anne_sophie1 = CatSittingOffer.create(
  {title:"Catsitting is life!" , localisation: "6 rue Pascal, Paris", description:"Love cat since my childhood", user: anne_sophie})

cat_sitting_offer_camille = CatSittingOffer.create(
  {title:"Lovely house for a cat" , localisation: "3 rue Dauphine, Paris", description:"Love cat since my childhood", user: camille})

cat_sitting_offer_camille1 = CatSittingOffer.create(
  {title:"Lovely house for a cat" , localisation: "3 avenue des gobelins, Paris", description:"Love cat since my childhood", user: camille})



cat_sitting_offer_jean = CatSittingOffer.create(
  {title:"I really love cats" , localisation: "New-York", description:"Love cat since my childhood", user: jean})

cat_sitting_offer_jean1 = CatSittingOffer.create(
  {title:"I really love cats" , localisation: "Paris", description:"Love cat since my childhood", user: jean})

cat_sitting_offer_edouard = CatSittingOffer.create(
  {title:"Looking for a cat friend" , localisation: "Lyon", description:"Love cat since my childhood", user: edouard})

cat_sitting_offer_edouard1 = CatSittingOffer.create(
  {title:"Looking for a cat friend" , localisation: "Londres", description:"Love cat since my childhood", user: edouard})

cat_sitting_offer_alice = CatSittingOffer.create(
  {title:"I can talk to cats" , localisation: "Bordeaux", description:"Love cat since my childhood", user: alice})


cat_sitting_offer_alice1 = CatSittingOffer.create(
  {title:"I can talk to cats" , localisation: "Paris", description:"Love cat since my childhood", user: alice})

url1 = Picture.create(image: '../app/assets/images/flat1.jpg')
# urls1 = [
#  assets_path('niche1.jpg'),
#  '../app/assets/images/flat1.jpg',
#  '../app/assets/images/people1.jpg'
# ]

# urls2 = [
#  '../app/assets/images/niche2.jpg',
#  '../app/assets/images/flat2.jpg',
#  '../app/assets/images/people2.jpg'
# ]
# urls3 = [
#  '../app/assets/images/niche3.jpg',
#  '../app/assets/images/flat3.jpg',
#  '../app/assets/images/people3.jpg'
# ]
# urls4 = [
#  '../app/assets/images/niche4.jpg',
#  '../app/assets/images/flat4.jpg',
#  '../app/assets/images/people4.jpg'
# ]
# urls5 = [
#  '../app/assets/images/niche5.jpg',
#  '../app/assets/images/flat5.jpg',
#  '../app/assets/images/people5.jpg'
# ]
# urls6 = [
#  '../app/assets/images/niche6.jpg',
#  '../app/assets/images/flat6.jpg',
#  '../app/assets/images/people6.jpg'
# ]

cat_sitting_offer_quentin.photo_urls = urls1
cat_sitting_offer_anne_sophie.photo_urls = urls2
cat_sitting_offer_camille.photo_urls = urls3
cat_sitting_offer_jean.photo_urls = urls4
cat_sitting_offer_edouard.photo_urls = urls5
cat_sitting_offer_alice.photo_urls = urls6

cat_sitting_offer_quentin1.photo_urls = urls1
cat_sitting_offer_anne_sophie1.photo_urls = urls2
cat_sitting_offer_camille1.photo_urls = urls3
cat_sitting_offer_jean1.photo_urls = urls4
cat_sitting_offer_edouard1.photo_urls = urls5
cat_sitting_offer_alice1.photo_urls = urls6


booking_quentin = Booking.create!({start_date: Date.today , end_date: Date.today + 2.days, cat_sitting_offer: cat_sitting_offer_camille, user: quentin, status: "pending"})
booking_anne_sophie = Booking.create!({start_date:Date.today + 2.days , end_date:Date.today + 4.days, cat_sitting_offer: cat_sitting_offer_quentin, user: anne_sophie, status: "pending"})
booking_camille = Booking.create!({start_date: Date.today + 4.days , end_date: Date.today + 6.days, cat_sitting_offer: cat_sitting_offer_anne_sophie, user: camille, status: "pending"})

puts "ok"

