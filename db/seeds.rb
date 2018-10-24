# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Speaker.create({first_name: "Dani", last_name: "Zaghian", email: "danielle@actualize.co"})

# 7.times do
#   @speaker = Speaker.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, age: rand(18..99), gender: Faker::Gender.binary_type)
#
#   @speaker.save
# end
#
speakers = Speaker.all
speakers.each do |speaker|
  if speaker.gender == "Female"
    speaker.gender = "F"
  elsif speaker.gender == "Male"
    speaker.gender = "M"
  else
    speaker.gender = "F"
  end
    speaker.save
end
#
# 7.times do
#   @meeting = Meeting.new(title: Faker::PrincessBride.quote, agenda: Faker::PrincessBride.character, time: "4:00PM - 5:00PM")
#
#   @meeting.save
# end
