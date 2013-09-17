# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p1 = Publisher.create name: "Blizzard Entertainment", year: 1991
p2 = Publisher.create name: "Bullfrog Productions", year: 1987

g1_1 = p1.games.create name: "Warcraft"
g1_2 = p1.games.create name: "Warcraft II"
g1_3 = p1.games.create name: "Diablo"
g1_4 = p1.games.create name: "Starcraft"
g1_5 = p1.games.create name: "Diablo II"
g1_6 = p1.games.create name: "Warcraft III"
g1_7 = p1.games.create name: "World of Warcraft"
g1_8 = p1.games.create name: "Starcraft II"
g1_9 = p1.games.create name: "Diablo III"

g2_1 = p2.games.create name: "Populous"
g2_2 = p2.games.create name: "Populous II"
g2_3 = p2.games.create name: "Theme Park"
g2_4 = p2.games.create name: "Dungeon Keeper"
g2_5 = p2.games.create name: "Theme Hospital"
g2_6 = p2.games.create name: "Populous: The Beginning"
g2_7 = p2.games.create name: "Dungeon Keeper II"