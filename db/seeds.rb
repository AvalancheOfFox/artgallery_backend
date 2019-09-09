# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


artist1 = Artist.create(name: 'Michelangelo') 
artist2 = Artist.create(name: 'Davinci') 
artist3 = Artist.create(name: 'Donatello') 
artist4 = Artist.create(name: 'Rafael')

artwork1 = Artwork.create(title: "Fresh 'Za", medium: "Cheese and sauce", artist_id: artist1.id, source: 'https://images-gmi-pmc.edge-generalmills.com/f4c0a86f-b080-45cd-a8a7-06b63cdb4671.jpg' )
artwork2 = Artwork.create(title: "Big Sub", medium: "Cheese and meat and bread", artist_id: artist2.id, source: 'https://bwog.com/wp-content/uploads/2016/10/maxresdefault.jpg' )
artwork3 = Artwork.create(title: "Sick Tag", medium: "Spray Paint", artist_id: artist3.id, source: 'https://cdn.shopify.com/s/files/1/0237/4125/products/Graffiti_2017_Wall_No_13.jpg?v=1513295595' )
artwork4 = Artwork.create(title: "Blank Space", medium: "Lack thereof", artist_id: artist4.id, source: 'https://www.toptal.com/designers/subtlepatterns/patterns/white_wall.png' )