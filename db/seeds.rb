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

create_table "posts", force: :cascade do |t|
  t.integer  "user_id"
  t.text     "content"
  t.string   "photo_url"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

user1 = User.create id: 1, email: "hpotter@hogwarts.edu", nickname: "The Chosen One", first_name: "Harry", last_name: "Potter"

user2 = User.create id: 2, email: "rweasley@hogwarts.edu", nickname: "Won Won", first_name: "Ron", last_name: "Weasley"

post1 = Post.create id: 1, user_id: 2, content: "No extra potions homework today!"
