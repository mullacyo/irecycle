# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = {}
user['password'] = '123qwe'

ActiveRecord::Base.transaction do
  20.times do 
    user['first_name'] = Faker::Name.first_name
    user['last_name'] = Faker::Name.last_name
    user['email'] = Faker::Internet.email
    user['waste'] = rand(0.0..1000.0)
    user['roles'] = rand(0..1)
    User.create(user)
  end
end 

reward = {}

ActiveRecord::Base.transaction do
  20.times do 
    reward['name'] = Faker::App.name
    reward['sponsor'] = Faker::Name.name
    reward['price'] = rand(5000..10000)
    Reward.create(reward)
  end
end 