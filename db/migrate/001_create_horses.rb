class CreateHorses < ActiveRecord::Migration
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :rank, default: 0
      t.references :barn
      t.references :pasture
    end
  end
end
