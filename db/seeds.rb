# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Pin.destroy_all

user = User.create(email: "carlos@gmail.com", password: "password", password_confirmation: "password")

puts "#{User.count} user created."

12.times do
	Pin.create(
		title: Faker::Simpsons.quote,
		description: Faker::HeyArnold.quote,
		created_at: Time.now,
		user_id: user.id
	)
end

puts "#{Pin.count} Pins created."