# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Categories
Category.create(name: 'Fantasy')
Category.create(name: 'Cyberpunk')
Category.create(name: 'Horror')

# Users
User.create(email: 'first@one.com', password: 'asdasdasd', firstname: 'John', lastname: 'Doe')
User.create(email: 'second@one.com', password: 'asdasdasd', firstname: 'Jane', lastname: 'Doe')
User.create(email: 'third@one.com', password: 'asdasdasd', firstname: 'Purple', lastname: 'Elephant')
User.create(email: 'fourth@one.com', password: 'asdasdasd', firstname: 'Red', lastname: 'Crocodile')
User.create(email: 'fifth@one.com', password: 'asdasdasd', firstname: 'Green', lastname: 'Ape')
User.create(email: 'edgarallan@poe.com', password: 'q1w2e3R$', firstname: 'Edgar', lastname: 'Poe', admin: true)

# Products
Product.create(title: 'Edge runner', description: 'You just woke up. Again.(...)', price: '0.99', category_id: 2, user_id: 3)
Product.create(title: 'Neverwhere', description: 'It was a lovely morning somewhere deep inside nowhere.', price: '9.01', category_id: 3, user_id: 1)
Product.create(title: 'I wish i was a vampire.', description: 'Do vampires glitter?', price: '2.00', category_id: 1, user_id: 2)

# Reviews
Review.create(content: 'No they dont! Im not gonna play it again.', rating: 1, product_id: 3, user_id: 5)
Review.create(content: 'Cool, worth the price.', rating: 5, product_id: 2, user_id: 1)
Review.create(content: 'I am not a girl.', rating: 4, product_id: 3, user_id: 3)
Review.create(content: 'Oh well.', rating: 2, product_id: 3, user_id: 2)
Review.create(content: 'Awesome! Give us second part!', rating: 5, product_id: 2, user_id: 4)
Review.create(content: 'I didnt like it.', rating: 1, product_id: 1, user_id: 1)