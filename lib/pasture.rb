class Pasture < ActiveRecord::Base
  has_many :horses

  def turn_in!(barn)
    puts "Turning in #{horses.size} horses"

    horses.size.times do
      attacker, defender = horses.sample(2)
      attacker.battle!(defender)
    end

    barn.horses += horses
    horses.clear

    barn.save!
    save!
  end
end
