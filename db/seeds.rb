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
quentin = User.create(email: "quentin@gmail.com", password: "azerty", first_name: "Quentin", last_name: "Coray")
anne_sophie = User.create(email: "anne_sophie@gmail.com", password: "azerty", first_name: "Anne-Sophie", last_name: "Chambon")
camille = User.create(email: "camille@gmail.com", password: "azerty", first_name: "Camille", last_name: "Franceschi")
jean = User.create(email: "jean@gmail.com", password: "azerty", first_name: "Jean", last_name: "Flantier")
edouard = User.create(email: "edouard@gmail.com", password: "azerty", first_name: "Edouard", last_name: "Robert")
alice = User.create(email: "alice@gmail.com", password: "azerty", first_name: "Alice", last_name: "Martin")


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




cat_sitting_offer_quentin = CatSittingOffer.create({title:"Wonderful catsitter" , localisation: "2 rue de la paix,Paris", description:"Love cat since my childhood", user: quentin})

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


urls1 = [
  'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/people1_hhhztk.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/niche1_aebqn2.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760655/flat1_hnuwjy.jpg'
]

urls2 = [
  'http://res.cloudinary.com/dymvgezcn/image/upload/v1489761803/people2_ai5mgs.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/niche2_hixgiu.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760655/flat2_xwjied.jpg'
]
urls3 = [
 'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/people3_qkvhli.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/niche3_gdy5bm.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760655/flat3_nokpee.jpg'
]
urls4 = [
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/people4_foqrsx.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/niche4_pxyatx.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760655/flat4_vcxs8k.jpg'
]
urls5 = [
  'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/people5_eotzug.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/niche5_rostxe.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760655/flat5_yftry0.jpg'
]
urls6 = [
  'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/people6_yw8jwe.jpg',
 'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760656/niche6_klnqyf.jpg',
'http://res.cloudinary.com/dymvgezcn/image/upload/v1489760655/flat6_ulurbx.jpg'
]

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

