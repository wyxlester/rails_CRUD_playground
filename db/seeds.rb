# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Cleaning database..."
Profile.destroy_all

puts "Creating profiles..."

require "open-uri"

img1 = URI.open("https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")

img2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")

pdf1 = URI.open("https://res.cloudinary.com/dqpfq3x5k/image/upload/v1675311455/development/dlxxc6pp984461e01hmzmmblf7dd.jpg")

profile1 = Profile.create!(
  name: 'Lester',
  age: Random.rand(21..40),
  email: Faker::Internet.email,
  fav_color: Faker::Color.color_name
)
profile1.photo.attach(io: img1, filename: "nes.png", content_type: "image/png")
profile1.cv.attach(io: pdf1, filename: 'lester_cv.jpg', content_type: "image/png")

profile2 = Profile.create!(
  name: 'Kenneth',
  age: Random.rand(21..40),
  email: Faker::Internet.email,
  fav_color: Faker::Color.color_name
)
profile2.photo.attach(io: img2, filename: "mountain.png", content_type: "image/png")

profile3 = Profile.create!(
  name: 'Jega',
  age: Random.rand(21..40),
  email: Faker::Internet.email,
  fav_color: Faker::Color.color_name
)

profile4 = Profile.create!(
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
    profile: profile1
  )
end

2.times do
  Book.create!(
    title: Faker::Book.title,
    year: Random.rand(1965..2023),
    profile: profile2
  )
end

3.times do
  Book.create!(
    title: Faker::Book.title,
    year: Random.rand(1965..2023),
    profile: profile3
  )
end

2.times do
  Book.create!(
    title: Faker::Book.title,
    year: Random.rand(1965..2023),
    profile: profile4
  )
end

puts "Finished!"
