# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create!(name: 'ms2sato')
Member.create!(name: 'saitos')
Member.create!(name: 'kabaneshi')
Member.create!(name: 'kojima87', status: 1)

Role.create!(name: '床・机')
Role.create!(name: 'トイレ・シンク')
Role.create!(name: 'ゴミ捨て')

History.create!(date: '2018-05-22', member_name: 'saitos', role_name: '床・机')
History.create!(date: '2018-05-22', member_name: 'kabaneshi', role_name: 'トイレ・シンク')
History.create!(date: '2018-05-22', member_name: 'kojima87', role_name: 'ゴミ捨て')

=begin
members = []
5.times do |i|
  members.push Member.create!(
    name: "member#{i}"
  )
end

roles = []
3.times do |i|
  roles.push Role.create!(
    name: "role#{i}"
  )
end
=end
