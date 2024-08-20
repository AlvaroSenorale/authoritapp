# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  birthdate: Faker::Time.between_dates(from: 40.years.ago, to: 30.years.ago, period: :all) ,
  admin: false,
  activated: true
)

user2 = User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  birthdate: Faker::Time.between_dates(from: 40.years.ago, to: 30.years.ago, period: :all) ,
  admin: false,
  activated: true,
  leader: user1
)
user3 = User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  birthdate: Faker::Time.between_dates(from: 40.years.ago, to: 30.years.ago, period: :all) ,
  admin: true,
  activated: true
)
user4 = User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  birthdate: Faker::Time.between_dates(from: 40.years.ago, to: 30.years.ago, period: :all) ,
  admin: false,
  activated: true,
  leader: user1
)


# user1 couch
Couch.create!(
  size: [1,2,3,4].sample,
  color: Faker::Color.color_name,
  stock: (0..10).to_a.sample,
  couch_type: ["Chesterfield", "Chaise Lounge"].sample,
  owner: user1
)

# user2's couches
4.times do
  Couch.create!(
    size: [1,2,3,4].sample,
    color: Faker::Color.color_name,
    stock: (0..10).to_a.sample,
    couch_type: ["Chesterfield", "Chaise Lounge"].sample,
    owner: user2
  )
end

# user3's couches
4.times do
  Couch.create!(
    size: [1,2,3,4].sample,
    color: Faker::Color.color_name,
    stock: (0..10).to_a.sample,
    couch_type: ["Chesterfield", "Chaise Lounge"].sample,
    owner: user3
  )
end

# user4's couches
4.times do
  Couch.create!(
    size: [1,2,3,4].sample,
    color: Faker::Color.color_name,
    stock: (0..10).to_a.sample,
    couch_type: ["Chesterfield", "Chaise Lounge"].sample,
    owner: user4
  )
end
