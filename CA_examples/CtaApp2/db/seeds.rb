# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = TrainLine.new
t.name = "Red"
t.subway = true
t.frequency = 10
t.save

t = TrainLine.new
t.name = "Brown"
t.subway = false
t.frequency = 8
t.save

t = TrainLine.new
t.name = "Yellow"
t.subway = false
t.frequency = 15
t.save

