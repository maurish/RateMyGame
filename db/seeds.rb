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
admin = User.create name: "admin", password:"password", password_confirmation:"password"

warcraft 	= blizzard.games.create name: "Warcraft", 			year:1994
warcraft2 	= blizzard.games.create name: "Warcraft II", 		year:1995
diablo 		= blizzard.games.create name: "Diablo", 			year:1996
starcraft 	= blizzard.games.create name: "Starcraft", 			year:1998
diablo2 	= blizzard.games.create name: "Diablo II", 			year:2000
warcraft3	= blizzard.games.create name: "Warcraft III", 		year:2002
wow 		= blizzard.games.create name: "World of Warcraft", 	year:2004
starcraft2	= blizzard.games.create name: "Starcraft II", 		year:2010
diablo3 	= blizzard.games.create name: "Diablo III", 		year:2012

populous 			= bullfrog.games.create name: "Populous", 				year:1989
populous2 			= bullfrog.games.create name: "Populous II", 			year:1991
theme_park 			= bullfrog.games.create name: "Theme Park", 			year:1994
dungeon_keeper 		= bullfrog.games.create name: "Dungeon Keeper", 		year:1997
theme_hospital 		= bullfrog.games.create name: "Theme Hospital", 		year:1997
populous_beginning 	= bullfrog.games.create name: "Populous: The Beginning",year:1998
dungeon_keeper2 	= bullfrog.games.create name: "Dungeon Keeper II", 		year:1999

warcraft.ratings.create 	score: 5, user_id: pauli[:id]
warcraft2.ratings.create 	score: 6, user_id: pauli[:id]
warcraft3.ratings.create    score: 7, user_id: pauli[:id]
wow.ratings.create 			score: 9, user_id: pauli[:id]
starcraft2.ratings.create 	score:10, user_id: pauli[:id]
diablo3.ratings.create 		score: 7, user_id: pauli[:id]

