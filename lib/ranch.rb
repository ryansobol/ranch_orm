require 'bundler'
Bundler.require

require_relative 'horse'
require_relative 'barn'
require_relative 'pasture'

ActiveRecord::Base.establish_connection(
  adapter:  :sqlite3,
  database: 'db/ranch.sqlite3'
)

socks = Horse.new(name: 'Socks', rank: 10)
socks.save!

slippers = Horse.new(name: 'Slippers')
slippers.save!

barn = Barn.new(horses: [socks, slippers])
barn.save!

buster = Horse.create!(name: 'Buster', rank: -5)
trigger = Horse.create!(name: 'Trigger', rank: 9)

pasture = Pasture.create!(horses: [buster, trigger])

barn.turn_out!(pasture)
pasture.turn_in!(barn)
