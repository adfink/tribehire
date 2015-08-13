# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.first.tribes.create(name:"Berners-Lee", story:"It all started in the dungeon, just a bunch of starry eyed kids trying to make it in this big world", phone:"3334445566", email:"drew@drew.com", address:"500 Main Street, Denver, CO 80205")
# User.first.tribes.create(name:"The Mil-town Mafia", story:"we code so hard. no give us our money", phone:"3334445566", email:"drew@drew.com", address:"Wisconsin Ave, Milwaukee, WI 54036")
# User.first.tribes.create(name:"The Mile High Hackers", story:"the second best tribe in all the land. we're all about getting things done and getting paid", phone:"3334445566", email:"drew@drew.com", address:"5000 Wall Street, Denver, CO 44445")

User.create(name: 'Andrew Fink', email: 'drew@drew.com')
User.create(name: 'Rachel Warbelow', email: 'demo+rachel@jumpstartlab.com')
User.create(name: 'Jeff', email: 'demo+jeff@jumpstartlab.com')
User.create(name: 'Jorge Tellez', email: 'demo+jorge@jumpstartlab.com')
User.create(name: 'Josh Cheek', email: 'demo+josh@jumpstartlab.com')

User.first.tribes.create(name:"Berners-Lee", story:"It all started in the dungeon, just a bunch of starry eyed kids trying to make it in this big world. We use code to build things and we believe in quality... we believe that there is a place in the world for excessive attention to detail.. hire us and we will prove it to you", phone:"3334445566", email:"drew@drew.com", address:"500 Main Street, Denver, CO 80205", image_path: "t2_water_falls.png")
User.first.tribes.create(name:"The Mil-town Mafia", story:"we code so hard. now give us our money please.", phone:"3334445566", email:"drew@drew.com", address:"Wisconsin Ave, Milwaukee, WI 54036", image_path: "t6_green_mountain.png")
User.first.tribes.create(name:"The Mile High Hackers", story:"the second best tribe in all the land. we're all about getting things done and getting paid, and then hittin the slopes to shred some sick gnar on the reg", phone:"3334445566", email:"drew@drew.com", address:"5000 Wall Street, Denver, CO 44445", image_path: "horses.jpeg")

User.last.tribes.create(name:"The Computer Whisperers", story:"It all started in the dungeon, just a bunch of starry eyed kids trying to make it in this big world. We use code to build things and we believe in quality... we believe that there is a place in the world for excessive attention to detail.. hire us and we will prove it to you", phone:"3334445566", email:"drew@drew.com", address:"500 Main Street, Denver, CO 80205", image_path: "lush_forest.png")
User.last.tribes.create(name:"Code Ninjas", story:"It all started in the dungeon, just a bunch of starry eyed kids trying to make it in this big world. We use code to build things and we believe in quality... we believe that there is a place in the world for excessive attention to detail.. hire us and we will prove it to you", phone:"3334445566", email:"drew@drew.com", address:"500 Main Street, Denver, CO 80205", image_path: "lonely.png")
User.last.tribes.create(name:"The Chosen Ones", story:"we code so hard. now give us our money please.", phone:"3334445566", email:"drew@drew.com", address:"Wisconsin Ave, Milwaukee, WI 54036", image_path: "t5_squadron.png")
User.last.tribes.create(name:"Dumbledoor's Army", story:"the second best tribe in all the land. we're all about getting things done and getting paid, and then hittin the slopes to shred some sick gnar on the reg", phone:"3334445566", email:"drew@drew.com", address:"5000 Wall Street, Denver, CO 44445", image_path: "t3_cows.png")
User.last.tribes.create(name:"The Happy Campers", story:"the second best tribe in all the land. we're all about getting things done and getting paid, and then hittin the slopes to shred some sick gnar on the reg", phone:"3334445566", email:"drew@drew.com", address:"5000 Wall Street, Denver, CO 44445", image_path: "t1_blue_sky.png")
User.last.tribes.create(name:"The Justice League", story:"the second best tribe in all the land. we're all about getting things done and getting paid, and then hittin the slopes to shred some sick gnar on the reg", phone:"3334445566", email:"drew@drew.com", address:"5000 Wall Street, Denver, CO 44445", image_path: "tools.png")
User.last.tribes.create(name:"Team Capitalism", story:"the second best tribe in all the land. we're all about getting things done and getting paid, and then hittin the slopes to shred some sick gnar on the reg", phone:"3334445566", email:"drew@drew.com", address:"5000 Wall Street, Denver, CO 44445", image_path: "liberty.png")



User.first.skills.create(name:'ruby')
User.first.skills.create(name:'ruby on rails')
User.first.skills.create(name:'googling')
User.first.skills.create(name:'juggling')

User.last.skills.create(name:'javascript')
User.last.skills.create(name:'C++')
User.last.skills.create(name:'LISP')
User.last.skills.create(name:'heroku')
User.last.skills.create(name:'haskel')
User.last.skills.create(name:'clojure')
User.last.skills.create(name:'java')
User.last.skills.create(name:'HTML and CSS')
User.last.skills.create(name:'pyton')
User.last.skills.create(name:'the internet')

Role.create(name: 'chief')
Role.create(name: 'chief')
