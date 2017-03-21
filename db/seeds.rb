
# Users
user1 = User.create!(email: "fake@bigdreams.com", password: "qwe123")

puts "#{User.all.size} users created"

# Dreams
dream1 = Product.create!(
name: "Millionaire's Dream",
description: "You want to have all? Be millionaire for a night",
price: 100,
photo: "http://blogs-images.forbes.com/timmaurer/files/2015/06/rich.jpg")

dream2 = Product.create!(
name: "Senior Web Developer",
description: "Master all the programming languages in one night!",
price: 150,
photo: "http://techiegrp.com/wp-content/uploads/2014/05/Senior-Web-Developer.jpg")

puts "#{Product.all.size} dreams created"
