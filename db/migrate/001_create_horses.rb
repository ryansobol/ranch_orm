class CreateHorses < ActiveRecord::Migration
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :rank, default: 0
      t.references :barn
      t.references :pasture
    end

    socks = Horse.new(name: 'Socks', rank: 10)
    socks.save!

    slippers = Horse.new(name: 'Slippers')
    slippers.save!
  end
end
