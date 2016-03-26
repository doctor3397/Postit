# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create(title: "Asian Cooking", comment: "This is an Asian recipe.", user_id: 1)
Post.create(title: "Italian Cooking", comment: "Italian food recipes", user_id: 2)
Post.create(title: "Thai Cooking", comment: "This is Thai recipe",  user_id: 3)
Post.create(title: "Japanese Cooking", comment: "This is Japanese reciepe",  user_id: 4)
Post.create(title: "India Cooking", comment: "India reciepe",  user_id: 1)

User.create(name: "Bob", email: "bob@gmail.com", password: "1234")
User.create(name: "Theresa", email: "theresa@gmail.com", password: "1234")
User.create(name: "Andrew", email: "andrew@gmail.com", password: "1234")
User.create(name: "Ted", email: "ted@gmail.com", password: "1234")
User.create(name: "Selina", email: "selina@gmail.com", password: "1234")

Comment.create(content: "I love it!", post_id: 1, user_id: 3)
Comment.create(content: "Thank you.", post_id: 2, user_id: 4)
Comment.create(content: "Great job!", post_id: 3, user_id: 2)
Comment.create(content: "Wonderful work!", post_id: 4, user_id: 2)

Category.create(title: "Italian")
Category.create(title: "Food")
Category.create(title: "Recipe")
Category.create(title: "Thai")
Category.create(title: "Japanese")

Connection.create(category_id: 1, post_id: 2)
Connection.create(category_id: 2, post_id: 1)
Connection.create(category_id: 2, post_id: 2)
Connection.create(category_id: 2, post_id: 3)
Connection.create(category_id: 2, post_id: 4)
Connection.create(category_id: 3, post_id: 1)
Connection.create(category_id: 3, post_id: 2)
Connection.create(category_id: 3, post_id: 3)
Connection.create(category_id: 3, post_id: 3)
Connection.create(category_id: 4, post_id: 3)
Connection.create(category_id: 5, post_id: 4)


