# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'CSV'

Mlb.destroy_all
Whitesox.destroy_all

CSV.foreach(Rails.root + 'public/mlb.csv', headers: true, encoding: 'UTF-8') do |row|
  Mlb.create!(start: row["START DATE"], time: row["START TIME (CT)"], away: row["Away"], home: row["Home"], location: row["LOCATION"])
  puts Mlb.count
end