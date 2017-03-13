# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CatSittingOffer.destroy_all

cat_sitting1 = CatSittingOffer.create(
  {title:"Julie loves cat" , localisation: "Paris", description:"Love cat since my childhood"})
cat_sitting2 = CatSittingOffer.create(
  {title:"Carole keeps all cats in Dublin" , localisation: "Dublin", description:"I have 3 cats, they need some friends to play!"})


urls1 = [
  'https://s-media-cache-ak0.pinimg.com/564x/8f/b0/77/8fb077e97b62cfab2a4dec108ac7112f.jpg',
  'http://i.imgur.com/kOKQVaS.png'
]

urls2 = [
  'https://cdnb.artstation.com/p/assets/images/images/001/863/575/large/irakli-nadar-artstation-da.jpg?1453903033',
  'http://chrisleavins.typepad.com/chrisleavins/images/2008/01/12/formal_catportrait_walter_elizabeth.jpg'
]

cat_sitting1.photo_urls = urls1
cat_sitting2.photo_urls = urls2

