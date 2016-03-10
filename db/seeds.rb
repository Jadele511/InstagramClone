# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..40).each do |n|
	photo = Photo.new(
		username: Faker::Name.name,
		caption: Faker::Superhero.name,
		created_at: Time.at(14447197352).utc.to_datetime,
		likes_count: Faker::Number.number(3),
		url: "http://placeimg.com/640/480/animals"
	)
	photo.save!
end