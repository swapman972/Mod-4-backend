# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Group.destroy_all

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
    such as creating large walls of fire[2] or shooting down incoming attacks with fire jabs.", 
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

