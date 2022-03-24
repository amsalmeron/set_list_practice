# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@kodak = Artist.create!(name: 'Kodak')
@cake = @kodak.songs.create!(title: 'Patty Cake', length: 200, play_count: 500)
@flockin = @kodak.songs.create!(title: 'No Flockin', length: 200, play_count: 500)
