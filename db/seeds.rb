# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Group.destroy_all
User.destroy_all
Topic.destroy_all
Comment.destroy_all

air = Group.create(name: "Air Tribe", description: "Air is the element of freedom.
    The Air Nomads detached themselves from worldly problems and concerns; 
    finding peace and freedom was the key to solving their difficulties in life. 
    Airbenders continually sought spiritual enlightenment, and, as a result, all children born into the Air Nomads were benders. 
    The first airbenders learned their art from the flying bison.
    The key to airbending is flexibility and finding and following the path of least resistance. 
    Airbending is notable for being almost purely defensive, as well as the most dynamic of the four bending arts. 
    Airbenders can overwhelm many opponents at once with large and powerful attacks that could prove fatal; 
    however, due to the pacifist nature of the Air Nomads, such attacks are rarely used. 
    Instead, an airbender strives to use the opponents' energy against them. 
    Due to their aforementioned spirituality, they often adapt to the situation surrounding them and employ negative jing, preferring evasive maneuvers as opposed to direct confrontation.", 
    image: "https://static.planetminecraft.com/files/resource_media/screenshot/1824/2018-06-16-21-50-44-1529205093.png" )

fire = Group.create(name: "Fire Nation", description: "As described by Iroh, fire is the element of power, consisting of overpowering force tempered by the unflinching will to accomplish tasks and desires. 
    However, during the Hundred Year War, a militaristic Fire Nation twisted this into firebending being fueled by rage, hatred, and anger. 
    Firebending draws its power from the sun, and the first human firebenders derived their firebending techniques from the dragons.
    Firebending is known for its intense and aggressive attacking style and general lack of adequate defensive moves, although firebenders can modify offensive maneuvers to function as a defense, 
    such as creating large walls of fire or shooting down incoming attacks with fire jabs.", 
    image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c98d6a58-22e8-4f57-91f2-a0cef53bc2da/dcfgnk3-8eb4eba1-3c9d-4110-9ff9-67d0e3ffc248.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvYzk4ZDZhNTgtMjJlOC00ZjU3LTkxZjItYTBjZWY1M2JjMmRhXC9kY2ZnbmszLThlYjRlYmExLTNjOWQtNDExMC05ZmY5LTY3ZDBlM2ZmYzI0OC5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.1txObY__7Vikk645uZIgSz5K_Zica3mStvEKCoyn3Ys" )

earth = Group.create(name: "Earth Nation", description: "Earth is the element of substance, while the people of the Earth Kingdom are diverse, strong, and enduring.
    Following the lion turtles' decision to relinquish their role as protectors of mankind, Oma and Shu were the first earthbenders to learn this art from the badgermoles.
    The key to earthbending is utilizing neutral jing, which involves waiting and listening for the right moment to strike and, when that moment comes, acting decisively. 
    In other words, earthbenders generally endure their enemies' attacks until the right opportunity to counterattack reveals itself.", 
    image: "https://vignette.wikia.nocookie.net/avatar/images/7/72/Earth_Kingdom_Royal_Palace.png/revision/latest?cb=20140519000525" )

water = Group.create(name: "Water Tribe", description: "Water is the element of change. The moon is the source of power in waterbending, and the original waterbenders learned to bend by observing how the moon pushed and pulled the tides. 
    The Water Tribes are the only people who did not learn to bend from an animal, though the Moon and Ocean Spirits took the form of koi fish in the mortal world near the beginning of the Avatar world.
    The fighting style of waterbending is mostly fluid and graceful, acting in concert with the environment. 
    Foggy Swamp style waterbending, however, is more rigid and straight. 
    Waterbenders deal with the flow of energy; they let their defense become their offense, turning their opponents' own forces against them. 
    Even when waterbenders do take an attack stance, their moves always appear to flow from one to the other.", 
    image: "https://vignette.wikia.nocookie.net/avatar/images/3/3e/Northern_Water_Tribe_Royal_Palace.png/revision/latest?cb=20140513180617" )

5.times do
  User.create(name: Faker::JapaneseMedia::OnePiece.character, age: rand(21..50), zip: Faker::Number.number(digits: 5), picture: Faker::LoremFlickr.image(size: "50x60"), group_id: Group.all.sample.id, password: "test123")
end
5.times do
  User.create(name: Faker::JapaneseMedia::DragonBall.character, age: rand(21..50), zip: Faker::Number.number(digits: 5), picture: Faker::LoremFlickr.image(size: "50x60"), group_id: Group.all.sample.id, password: "test123")
end

allmight = User.create(name: "AllMight", age: 35, zip: Faker::Number.number(digits: 5), picture: "https://vignette.wikia.nocookie.net/bokunoheroacademia/images/5/55/All_Might_Hero_Form_Full_Body.png/revision/latest?cb=20190129015644", group_id: Group.all.sample.id, password: "test")
jo = User.create(name: "Jotaro", group_id: 2, age: 24, zip: 11236, picture: "https://i.pinimg.com/564x/3a/ef/5f/3aef5fd261969471188a142f214f88d5.jpg", password: "test")

luffy = Topic.create(title: "Monkey D. Luffy", content: "strongest pirate alive", user: User.all.sample, image: "https://giffiles.alphacoders.com/354/35458.gif")
cats = Topic.create(title: "Cats", content: "Cats are the best! This one for Nicky", user: User.all.sample, image: "https://i.gifer.com/UoQN.gif")
chopper = Topic.create(title: "Tony Tony Chopper", content: "cutest doctor", user: User.all.sample, image: "https://media1.giphy.com/media/13Uqp5IGFpmDle/giphy.gif")
dogs = Topic.create(title: "Dogs", content: "Dogs are the best", user: User.all.sample, image: "https://i.chzbgr.com/full/8038240768/h94B602D1/3-yawning-dogs-gif")
pizzaNY = Topic.create(title: "New York Pizza", content: "Nothing like New York pizza", user: User.all.sample, image: "https://i.makeagif.com/media/8-18-2015/-ytpz3.gif")
pizzaChicago = Topic.create(title: "Chicago Pizza", content: "Chicago pizza is better then New York pizza", user: User.all.sample, image: "https://giordanos.com/wp-content/uploads/Hero-image_1210-v2.jpg")
phone = Topic.create(title: "CellPhones", content: "Children shouldn’t be allowed cell phones until they are over 18.", user: User.all.sample, image: "https://www.healingchoices.com/assets/users/chiro/1238/uploads/images/2019/06/phones.jpg")
games = Topic.create(title: "VideoGames", content: "Playing video games is bad for health. Agree or disagree?", user: User.all.sample, image: "https://cdn.vox-cdn.com/thumbor/x8pw9O_UdeENcbV0kuZxfkKUgkE=/0x0:1920x1080/1200x800/filters:focal(807x387:1113x693)/cdn.vox-cdn.com/uploads/chorus_image/image/66927028/image.0.png")
mirio = Topic.create(title: "Mirio Togata", content: "Strongest student of UA. Agree or disagree?", user: User.all.sample, image: "https://media1.tenor.com/images/b09c38581c3a626cf34a1a498ae504a5/tenor.gif?itemid=15812245")
bakugo = Topic.create(title: "Bakugo Katsuki", content: "Grumpiest student of UA. Agree or disagree?", user: User.all.sample, image: "https://media1.tenor.com/images/a43c75f61ff77fc44bbbc68026fe601e/tenor.gif?itemid=10293940")
xbox = Topic.create(title: "Xbox vs PS", content: "Xbox is better then PlayStation", user: User.all.sample, image: "https://cnet3.cbsistatic.com/img/DlUxD600YS90Fug6PLHsYi-jymY=/940x0/2020/02/25/7ec59c3d-5f66-4a32-ad55-6ab81d275ac2/xboxback.jpg")
swimming = Topic.create(title: "Swimming", content: "Swimming is in the top 3 of most difficult sports", user: User.all.sample, image: "https://media3.giphy.com/media/TFXoCcEemsS1G/giphy.gif")
messi = Topic.create(title: "Lionel Messi", content: "Best Soccer Player at the moment?", user: User.all.sample, image: "https://i2-prod.mirror.co.uk/incoming/article13260478.ece/ALTERNATES/s615b/0_La-Liga-Santander-FC-Barcelona-v-Alaves.jpg")
ronaldo = Topic.create(title: "Christiano Ronaldo", content: "Best Soccer Player at the moment?", user: User.all.sample, image: "https://media.tenor.com/images/ec976aeff6b9320d316c92e66ad38d41/tenor.gif")
phelps = Topic.create(title: "Michael Phelps", content: "Greatest athlete of all time", user: User.all.sample, image: "https://www.americangrit.com/wp-content/uploads/2018/01/Michael-Phelps.jpg")
 

10.times do
  Comment.create(content: Faker::TvShows::FamilyGuy.quote, topic: Topic.all.sample, user: User.all.sample, group: Group.all.sample)
end

10.times do
  Comment.create(content: Faker::TvShows::Simpsons.quote, topic: Topic.all.sample, user: User.all.sample, group: Group.all.sample)
end

10.times do
  Comment.create(content: Faker::Quotes::Shakespeare.as_you_like_it_quote, topic: Topic.all.sample, user: User.all.sample, group: Group.all.sample)
end

10.times do
  Comment.create(content: Faker::Quotes::Shakespeare.hamlet_quote, topic: Topic.all.sample, user: User.all.sample, group: Group.all.sample)
end
