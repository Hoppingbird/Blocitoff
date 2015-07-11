require 'faker'


# create items
 20.times do
     Item.create!(
     name: Faker::Lorem.sentence,
     completed: "false"
 )
 end

 user = User.new(
   email:    'member10@example.com',
   password: 'helloworld'
 )
 user.skip_confirmation!
 user.save!

 user = User.new(
   email:    'member9@example.com',
   password: 'helloworld'
 )
 user.skip_confirmation!
 user.save!

 user = User.new(
   email:    'member8@example.com',
   password: 'helloworld'
 )
 user.skip_confirmation!
 user.save!

 user = User.new(
   email:    'member7@example.com',
   password: 'helloworld'
 )
 user.skip_confirmation!
 user.save!

user = User.new(
   email:    'member6@example.com',
   password: 'helloworld'
 )
 user.skip_confirmation!
 user.save!

user = User.all
item = Item.all
puts "Seed finished"
puts "#{User.count} users"
puts "#{Item.count} items"

