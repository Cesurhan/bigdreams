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
  photo: 'http://blogs-images.forbes.com/timmaurer/files/2015/06/rich.jpg'
)

dream2 = Product.create!(
  name: 'Senior Web Developer',
  description: 'Master all the programming languages in one night!',
  price: 150,
  photo: 'http://techiegrp.com/wp-content/uploads/2014/05/Senior-Web-Developer.jpg'
)

dream3 = Product.create!(
  name: 'World Trip',
  description: 'How about a week of world trip package? Maybe in reality this is not possible but there is no impossible in the world of our dreams!',
  price: 350,
  photo: 'http://www.adorotravel.com/wp-content/uploads/2017/02/33021717-travel.jpg'
)

puts "#{Product.all.size} dreams created"
