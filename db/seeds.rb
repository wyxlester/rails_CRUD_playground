# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts "Cleaning database..."
Profile.destroy_all

puts "Creating profiles..."


profile_1 = Profile.create!(
  name: 'Lester',
  age: Random.rand(21..40),
  email: Faker::Internet.email,
  fav_color: Faker::Color.color_name
)

profile_2 = Profile.create!(
  name: 'Kenneth',
  age: Random.rand(21..40),
  email: Faker::Internet.email,
  fav_color: Faker::Color.color_name
)

profile_3 = Profile.create!(
  name: 'Jega',
  age: Random.rand(21..40),
  email: Faker::Internet.email,
  fav_color: Faker::Color.color_name
)

profile_4 = Profile.create!(
  name: 'Fai',
  age: Random.rand(21..40),
  email: Faker::Internet.email,
  fav_color: Faker::Color.color_name
)

puts "Creating books..."

5.times do
  Book.create!(
    title: Faker::Book.title,
    year: Random.rand(1965..2023),
    profile: profile_1
  )
end

2.times do
  Book.create!(
    title: Faker::Book.title,
    year: Random.rand(1965..2023),
    profile: profile_2
  )
end

3.times do
  Book.create!(
    title: Faker::Book.title,
    year: Random.rand(1965..2023),
    profile: profile_3
  )
end

2.times do
  Book.create!(
    title: Faker::Book.title,
    year: Random.rand(1965..2023),
    profile: profile_4
  )
end

puts "Finished!"
