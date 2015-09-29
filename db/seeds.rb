# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
   #Mayor.create(name: 'Emanuel', city: cities.first)

# users=User.create(email:'admin@gmail.com',password:'12345678')
posts = Post.create!([
  {id: 1, name: "ROR Dev", body: "2 year experience"},
  {id: 2, name: "Disign", body: "2 year experience"},
  {id: 3, name: "ROR Tester", body: "1 year experience"}
])