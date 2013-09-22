# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
blizzard = Publisher.create name: "Blizzard Entertainment", year: 1991, city: "Irvine, California", country: "USA"
bullfrog = Publisher.create name: "Bullfrog Productions", year: 1987, city: "Guildford", country: "UK"

pauli = User.create name: "pauli", password:"iluap", password_confirmation: "iluap"
paula = User.create name: "paula", password:"aluap", password_confirmation: "aluap"

warcraft 	= blizzard.games.create name: "Warcraft"
warcraft2 	= blizzard.games.create name: "Warcraft II"
diablo 		= blizzard.games.create name: "Diablo"
starcraft 	= blizzard.games.create name: "Starcraft"
diablo2 	= blizzard.games.create name: "Diablo II"
warcraft3	= blizzard.games.create name: "Warcraft III"
wow 		= blizzard.games.create name: "World of Warcraft"
starcraft2	= blizzard.games.create name: "Starcraft II"
diablo3 	= blizzard.games.create name: "Diablo III"

populous 			= bullfrog.games.create name: "Populous"
populous2 			= bullfrog.games.create name: "Populous II"
theme_park 			= bullfrog.games.create name: "Theme Park"
dungeon_keeper 		= bullfrog.games.create name: "Dungeon Keeper"
theme_hospital 		= bullfrog.games.create name: "Theme Hospital"
populous_beginning 	= bullfrog.games.create name: "Populous: The Beginning"
dungeon_keeper2 	= bullfrog.games.create name: "Dungeon Keeper II"

warcraft.ratings.create score: 5, user_id: pauli.[:id]