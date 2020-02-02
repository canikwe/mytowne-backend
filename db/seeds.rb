# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### RESET DB ONLY ###
User.destroy_all
Post.destroy_all
Tag.destroy_all

image_results = Unsplash::Photo.search("dogs")

u1 = User.create(
  name: 'Chine',
  birth_date: DateTime.new(2000,1,1),
  email: 'canikwe@mytowne.com',
  username: 'canikwe',
  town: 'WeLive - Clarendon',
  avatar: 'http://fanaru.com/harry-potter/image/thumb/156477-harry-potter-neville-longbottom.jpg',
  bio: 'I love cheesy puns and Harry Potter.',
  password: 'password'
)

u2 = User.create(
  name: 'Chris',
  birth_date: DateTime.new(2000,1,1),
  email: 'cjones@mytowne.com',
  username: 'cjones',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: 'A bibliophile, curator of fine charcuterie, and philosopher of the modern era.',
  password: 'password'
)

u3 = User.create(
  name: 'Shannon',
  birth_date: DateTime.new(2000,1,1),
  email: 'shannon@mytowne.com',
  username: 'shananegons',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: 'The Imperius Curse can be fought, and I’ll be teaching you how, but it takes real strength of character, and not everyone’s got it. Better avoid being hit with it if you can',
  password: 'password'
)

u4 = User.create(
  name: 'Andrea',
  birth_date: DateTime.new(2000,1,1),
  email: 'andrea@mytowne.com',
  username: 'andy',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: 'Moronic though some of this class undoubtedly are, I expect you to scrape an ‘Acceptable’ in your O.W.L., or suffer my ... displeasure.',
  password: 'password'
)

u5 = User.create(
  name: 'Jake',
  birth_date: DateTime.new(2000,1,1),
  email: 'jake@mytowne.com',
  username: 'contrajake',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)

u6 = User.create(
  name: 'Ben',
  birth_date: DateTime.new(2000,1,1),
  email: 'ben@mytowne.com',
  username: 'benji',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: 'Curiosity is not a sin, but we should exercise caution with our curiosity . . . yes indeed .',
  password: 'password'
)

u7 = User.create(
  name: 'James',
  birth_date: DateTime.new(2000,1,1),
  email: 'james@mytowne.com',
  username: 'jamese',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: 'It is our choices, Harry, that show what we truly are, far more than our abilities',
  password: 'password'
)

u8 = User.create(
  name: 'Artem',
  birth_date: DateTime.new(2001, 1, 1),
  email: 'artem@mytowne.com',
  username: 'arty',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: 'Dobby likes work, but he wants to wear clothes and he wants to be paid, Harry Potter . . . Dobby likes being free!',
  password: 'password'
)

u9 = User.create(
  name: 'Ross',
  birth_date: DateTime.new(2000,1,1),
  email: 'ross@mytowne.com',
  username: 'theboss',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)

u10 = User.create(
  name: 'MK',
  email: 'mkay@mytowne.com',
  username: 'mkay',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)

u11 = User.create(
  name: 'Kyle',
  email: 'dusty@mytowne.com',
  username: 'dusty',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: "Dusty... it's a family name",
  password: 'password'
)

u12 = User.create(
  name: 'Phil',
  email: 'phil@mytowne.com',
  username: 'justPhil',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)

u13 = User.create(
  name: 'Hai',
  email: 'hai@mytowne.com',
  username: 'haibye',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)

u14 = User.create(
  name: 'Shanik',
  email: 'shanik@mytowne.com',
  username: 'sheNice',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)

u15 = User.create(
  name: 'Ryan',
  email: 'ryan@mytowne.com',
  username: 'ryguy',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)

u16 = User.create(
  name: 'Heloise',
  email: 'heloise@mytowne.com',
  username: 'Weezy',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)

u17 = User.create(
  name: 'Anthony',
  email: 'anthony@mytowne.com',
  username: 'antman',
  town: 'WeLive - Clarendon',
  avatar: '',
  bio: '',
  password: 'password'
)


post1 = Post.create(
  title: 'Harry Potter and the Deathly Hallows: A Viewing Party!',
  content: 'Join us for a viewing party this week projected on the community center lawn. Refreshments and general discussion to follow.',
  img: 'https://secure.img1-fg.wfcdn.com/im/23411414/resize-h600-w600%5Ecompr-r85/4049/40493777/Harry+Potter+%27Book+Cover+-+Deathly+Hallows%27+Graphic+Art+Print.jpg',
  user_id: u1.id
)

post2 = Post.create(
  title: 'The Little Voice in Our Heads',
  content: 'A discussion on how to better listen to the calming voice inside us all.',
  img: 'https://bbkphilosophysociety.files.wordpress.com/2014/06/6a010535ce1cf6970c0163018bb9c2970d.jpg',
  user_id: u2.id
)

post3 = Post.create(
  title: "Cheese: An Exploration of God's Gift to Man",
  content: 'A sharing of cheese plates and your finest charcuterie. If you bring American cheese, you will be asked politely, yet firmly, to leave.',
  img: 'https://iambaker.net/wp-content/uploads/2018/02/DIY-Cheese-Tray-1.jpg',
  user_id: u2.id
)

post4 = Post.create(
  title: 'To the owner of the white camero',
  content: "Can you please move your car? You're blocking me in, and I can't leave my house",
  img: 'https://www.camaro5.com/forums/attachment.php?attachmentid=381282&stc=1&d=1338940673',
  user_id: u3.id
)

p5 = Post.create(
  title: 'The Art of Vim: A Coding Story',
  content: 'This week, I will be broadcasting how to make a chip jpeg into an svg file. Wicked.',
  img: 'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fdam%2Fimageserve%2F39415426%2F960x0.jpg%3Ffit%3Dscale',
  user_id: u5.id
)

p6 = Post.create(
  title: 'StoryBots Reading',
  content: "Make way, for the mighty M! So many words that you can spell with him. Won't you march aloooong to the mighty, mighty M!",
  img: 'https://jibjabjr.files.wordpress.com/2018/08/askthestorybots1.png?w=900',
  user_id: u6.id
)

p7 = Post.create(
  title: 'Lost Cat',
  content: 'Please do not return. If you find the cat, please bring me a dog that resembles the picture instead. Thanks in advance.',
  img: 'https://media1.giphy.com/media/rmvMh6rmX3x7O/source.gif',
  user_id: u7.id
)

p8 = Post.create(
  title: 'Community Garden Idea!',
  content: "Y'all, we should start a garden together! I promise it won't succulent!",
  img: 'http://www.millcitygrows.org/wp-content/uploads/2012/11/Smith-Street-Community-Garden-1.jpg',
  user_id: u8.id
)

p9 = Post.create(
  title: 'Inspirational Wednesday',
  content: 'A friendly reminder to believe in youself and follow your dreams.',
  img: 'https://media.giphy.com/media/9fn7ogiJHmYG4/giphy-downsized-large.gif',
  user_id: u9.id
)

p10 = Post.create(
  title: 'Garage Sale',
  content: 'We are selling all of our stuff and moving across the country. EVERYTHING MUST GO!',
  img: 'https://cdn.gobankingrates.com/wp-content/uploads/2018/03/00-shutterstock_295152104-848x477.jpg',
  user_id: u10.id
)

p11 = Post.create(
  title: 'Can anyone build a tinyhome?',
  content: "I'm tired of squatting at WeWork. It's time to branch off and move into a tiny home. ",
  img: 'http://www.viewpointcloud.com/wp-content/uploads/2017/03/A-Governments-Guide-to-Tiny-House-Regulation2.png',
  user_id: u11.id
)

p12 = Post.create(
  title: 'Great Joke Wednesday',
  content: "If you’re American when you go in the bathroom… and American when you come out, what are you in the bathroom? European.",
  img: 'https://ichef.bbci.co.uk/news/660/cpsprodpb/857D/production/_105337143_laughter6.jpg',
  user_id: u12.id
)

p13 = Post.create(
  title: 'Star Gazing in the Gardens',
  content: 'We are gathering people to watch the stars and ready ourselves for Mercury moving into retrograde.',
  img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiCJBbtRIuWxBxzN1k5SZMisLn4BDd2ELmZgT0FmeuKo169OF7',
  user_id: u13.id
)

p14 = Post.create(
  title: 'Theif in our midsts!',
  content: 'Boomslang skin. Gillyweed. Both come from my private stores, and I know who stole them.',
  img: 'https://www.salfordcommunityleisure.co.uk/sites/default/files/styles/page_width_standard/public/uploads/events/Magic%20potions%20%283%29%20edited%20for%20web.jpg?itok=AaLT7zNO',
  user_id: u14.id
)

p15 = Post.create(
  title: 'Good Hiking Trails?',
  content: "Hey, does nayone know of any good hiking trails in the area? Preferably dog friendly, since I'm trying to take my dog, Sprout, as well. Many thanks in advance!",
  img: 'http://wolfcreekcompany.com/wp-content/uploads/2017/04/question-mark.jpeg',
  user_id: u15.id
)

p16 = Post.create(
  title: 'PKing into my soul',
  content: 'New Chinese place is DANK! That sweet and sour chicken just rolls off the fork. So delicious. Highly recommend!',
  img: 'http://file1.chinesemenu.com/restaurant/201403/1395094686134.jpg',
  user_id: u16.id
)

p17 = Post.create(
  title: "Holiday Ribbon frm Michael's",
  content: 'Mus go today. Please message for further detals.',
  img: 'https://images.craigslist.org/00f0f_br3ekcxIIHC_600x450.jpg',
  user_id: u17.id
)

p18 = Post.create(
  title: "Kid's Craft Show",
  content: "Next Friday at 7 PM, come join us for the 2nd Annual Kids Craft Show! Benefiting St. Jude Children's Research Hospital.",
  img: 'http://fumcva.org/monkimage.php?mediaDirectory=mediafiles&mediaId=5702077&fileName=crafting-for-a-cure-1-0-0-1200-0.jpg',
  user_id: u10.id
)

p19 = Post.create(
  title: 'New in Town',
  content: 'Looking for friends and reccommendations for food and fun. Please feel free to email, call, tweet, retweet, etc.',
  img: 'https://www.fluentu.com/blog/french/wp-content/uploads/sites/3/2014/02/french-greetings-goodbye1.jpg',
  user_id: u15.id
)

p20 = Post.create(
  title: 'Looking for Holiday Ribbon from Michaels',
  content: 'Will take anything in plaid, red, or green. Need to wrap some suuuuper late holiday gifts, but Michael is all sold out of ribbons! Your help is appreciated :)',
  img: '',
  user_id: u7.id
)

# Generate Tags

tag1 = Tag.create(name: 'General')
tag2 = Tag.create(name: 'Events')
tag3 = Tag.create(name: 'For sale')
tag4 = Tag.create(name: 'Lost')

10.times do
  Tag.create(name: Faker::Hipster.word)
end

post1.tags = [tag1, tag2]
post2.tags = [tag2, tag3]
post3.tags = [tag1, tag4]
post4.tags = [tag1]
p5.tags = [tag1]
p6.tags = [tag2]
p7.tags = [tag3]
p8.tags = [tag4]
p9.tags = [tag1, tag3]
p10.tags = [tag1, tag2, tag3]
p11.tags = [tag1]
p12.tags = [tag4]
p13.tags = [tag3, tag2]
p14.tags = [tag2]
p15.tags = [tag2]
p16.tags = [tag3]
p17.tags = [tag2, tag4]
p18.tags = [tag1]
p19.tags = [tag4]
p20.tags = [tag3, tag4]

### GENERATE NEW USERS/POSTS ###

# nugu = User.create(
#   name: Faker::Name.name,
#   birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
#   email: Faker::Internet.email,
#   username: Faker::Twitter.screen_name,
#   town: 'WeLive - Clarendon',
#   password: 'password',
#   avatar: Faker::LoremFlickr.image(size: "50x60", search_terms: ['profile'])
# )

# 3.times do
#   Post.create(
#     title: Faker::Lorem.sentence,
#     content: Faker::Lorem.paragraph,
#     user: nugu,
#     tags: [Tag.all.sample, Tag.all.sample].uniq,
#     img: image_results.sample.urls.regular
#   )
# end

15.times do
  post = Post.create(
    title: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    content: Faker::Hipster.paragraph,
    user: User.all.sample,
    img: image_results.sample.urls.regular
  )
  post.tags = [Tag.all.sample, Tag.all.sample, Tag.all.sample].uniq
end

20.times do
  Post.all.sample.user_likes = [User.all.sample, User.all.sample, User.all.sample, User.all.sample].uniq
end

# Post.all.each do |post|
#   post.tags = [Tag.all.sample, Tag.all.sample].uniq
# end


# byebug
# 0

# Post.all.each {|p| p.tags = [Tag.all.sample, Tag.all.sample, Tag.all.sample, Tag.all.sample].uniq}