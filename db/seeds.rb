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

User.first.tribes.create(name:"Berners-Lee", story:"It all started in the dungeon, just a bunch of starry eyed kids trying to make it in this big world", phone:"3334445566", email:"drew@drew.com", address:"500 Main Street, Denver, CO 80205")
User.first.tribes.create(name:"The Mil-town Mafia", story:"we code so hard. no give us our money", phone:"3334445566", email:"drew@drew.com", address:"Wisconsin Ave, Milwaukee, WI 54036")
User.first.tribes.create(name:"The Mile High Hackers", story:"the second best tribe in all the land. we're all about getting things done and getting paid", phone:"3334445566", email:"drew@drew.com", address:"5000 Wall Street, Denver, CO 44445")

User.first.skills.create(name:'ruby')
User.first.skills.create(name:'ruby on rails')
User.first.skills.create(name:'googling')
User.first.skills.create(name:'juggling')

Role.create(name: 'chief')
Role.create(name: 'chief')
