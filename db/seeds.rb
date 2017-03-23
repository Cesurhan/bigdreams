# Product.delete.all
# User.delete.all

# Users
user1 = User.create!(email: 'ces@bigdreams.com', password: 'qwe123', admin: true)
user2 = User.create!(email: 'fake@bigdreams.com', password: 'qwe123')

puts "#{User.all.size} users created"

# Dreams
dream1 = Product.create!(
  name: "Millionaire's Dream",
  description: 'You want to have all? Be millionaire for a night',
  price: 100,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490278751/rich_wpdznk.jpg'
)

dream2 = Product.create!(
  name: 'Senior Web Developer',
  description: 'Master all the programming languages in one night!',
  price: 150,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490278783/Senior-Web-Developer_ed1nph.jpg'
)

dream3 = Product.create!(
  name: 'World Trip',
  description: 'How about a week of world trip package? Maybe in reality this is not possible but there is no impossible in the world of our dreams!',
  price: 350,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490278820/33021717-travel_nw61ju.jpg'
)

puts "#{Product.all.size} dreams created"
