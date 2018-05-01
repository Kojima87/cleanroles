# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

members = []
5.times do |i|
  members.push Member.create!(
    name: "member#{i}",
    delete_flag: 0
  )
end

roles = []
3.times do |i|
  roles.push Role.create!(
    name: "role#{i}",
    delete_flag: 0
  )
end
