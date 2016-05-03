# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.destroy_all
User.destroy_all
Pledge.destroy_all

purse = Project.create!(
  name: 'Purse',
  description: 'This is a really nice purse!',
  location: 'Toronto, ON',
  deadline: DateTime.now + 1.month,
  goal: 10000,
  image: 'http://vignette4.wikia.nocookie.net/clubpenguin/images/3/3c/Pink_Purse.png/revision/latest?cb=20130102040213'
)

bob = User.create!(
  name: 'Bob Boblaw',
  email: 'bb@gmail.com',
  password: 'hi',
  owner: false
)

five_dollars = Pledge.create!(
  amount: 5,
  reward: 'Puppy!',
  delivery: DateTime.now + 6.months,
  user_id: bob.id,
  project_id: purse.id
)