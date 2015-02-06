class Barn < ActiveRecord::Base
  has_many :horses

  def turn_out!(pasture)
    puts "Turning out #{horses.size} horses"
    attacker, defender = horses.sample(2)
    attacker.battle!(defender)

    pasture.horses += horses
    horses.clear

    pasture.save!
    save!
  end
end
