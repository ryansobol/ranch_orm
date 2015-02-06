class Horse < ActiveRecord::Base
  def graze(value = 1)
    puts 'nom' * value
  end

  def battle!(enemy)
    puts "#{name} wildly kicks at #{enemy.name}"
    value = rand(-2..3)
    enemy.rank -= value
    self.rank += value
    save!
  end
end
