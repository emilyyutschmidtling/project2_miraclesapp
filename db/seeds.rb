# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# posts = Post.create([
#   {
#     content: "Post 1 - If you can see this message, it's a miracle!!!  And here's a cat picture for fun...",
#     photo_url: "http://i.imgur.com/EBWst9O.jpg"
#   },
#   {
#     content: "Post 2 - Who you're gonna call?  Ghostbusters!",
#     photo_url: "http://t3.gstatic.com/images?q=tbn:ANd9GcQu6t289OZIOlPWU_AkeaL-3-kb2AywKUACnXSer1g_-pcpi0mi"
#   }
# ])

# NOTE:  I tried to add seed data, but kept getting error messages about violating foreign key restrictions.  I think it might be a conflict with the Devise gem.

# user1 = User.create email: "hpotter@hogwarts.edu", nickname: "The Chosen One", first_name: "Harry", last_name: "Potter"
#
# user2 = User.create email: "rweasley@hogwarts.edu", nickname: "Won Won", first_name: "Ron", last_name: "Weasley"
#
# post1 = Post.create content: "Crookshanks didn't eat Scabbers.  So here's a cute cat pic for Hermione.", photo_url: "http://i.imgur.com/EBWst9O.jpg"
#
# post2 = Post.create content: "No potions class today - let's celebrate!", photo_url: "http://i.imgur.com/9afFeqF.jpg"
#
# comment1 = Comment.create content: "Awesome!  Let's go to the Three Broomsticks."
