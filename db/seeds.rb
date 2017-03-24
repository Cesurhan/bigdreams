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
  price: 50,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490278751/rich_wpdznk.jpg'
)

dream2 = Product.create!(
  name: 'Senior Web Developer',
  description: 'Master all the programming languages in one night!',
  price: 60,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490278783/Senior-Web-Developer_ed1nph.jpg'
)

dream3 = Product.create!(
  name: 'World Trip',
  description: 'How about a week of world trip package? Maybe in reality this is not possible but there is no impossible in the world of our dreams!',
  price: 50,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490278820/33021717-travel_nw61ju.jpg'
)

dream4 = Product.create!(
  name: 'SoulMate',
  description: 'Feeling lonely? A soulmate is someone who has locks that fit our keys, and keys to fit our locks. When we feel safe enough to open the locks, our truest selves step out and we can be completely and honestly who we are. All this is possible right away with our lovely SoulMate dream package',
  price: 50,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490360846/sun-love-soulmate-300x300_gbjvjn.jpg'
)

dream5 = Product.create!(
  name: 'Fly Like a Bird',
  description: 'Feel free...go anywhere... extend your wings and let your troubles behind',
  price: 35,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490361148/3911032138_947ea59ee6_b_wjfrfg.jpg'
)

dream6 = Product.create!(
  name: 'Fear of heights?',
  description: 'Fear of heights? forget about it and conquer the skies with this phobia-free dream',
  price: 30,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490361496/2494036129_0ee2e61952_b_ovkshd.jpg'
)

dream7 = Product.create!(
  name: 'Mirror, mirror',
  description: 'Be the best you... it is only a pillow away from you...',
  price: 25,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490361653/Relaxer-Sourire-Slide_zhimgy.jpg'
)

dream8 = Product.create!(
  name: 'Meet Santa',
  description: 'Dissapointed about last year christmas gifts? Make sure that Santa gets your wishes right this time',
  price: 30,
  remote_photo_url: 'http://media.alta.com/resources/ski-with-santa.jpg'
)

dream9 = Product.create!(
  name: 'Fit & Sexy',
  description: 'No need to sweat!',
  price: 15,
  remote_photo_url: 'http://s.eatthis-cdn.com/media/images/ext/258355909/best-weight-loss-tips-fitness-man-women.jpg'
)

dream10 = Product.create!(
  name: 'Go to the moon',
  description: 'Need some holidays? Why not go to the moon?',
  price: 45,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490362490/photo-640x461_q601_vmvakn.jpg'
)


dream11 = Product.create!(
  name: 'Wanna trip?',
  description: 'Experience the unknown... see the world in a different light. We take you there from the safety of your bed',
  price: 30,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490362854/71164761e4d709f1c61046f936924e08_so1r0h.gif'
)

dream12 = Product.create!(
  name: 'Be the Mona Lisa',
  description: 'Have you always wanted to be famous? Have people wait in line for you? With us you can become the most admired woman ever!',
  price: 10,
  remote_photo_url: 'http://res.cloudinary.com/marcia/image/upload/v1490363933/yYl423S_g8evbp.jpg'
)


puts "#{Product.all.size} dreams created"
