class CreateEnergies < ActiveRecord::Migration[5.2]
  def change
    create_table :energies do |t|
      t.integer :energy_id
      t.integer :label
      t.integer :house
      t.integer :year
      t.integer :month
      t.float :temperature
      t.float :daylight
      t.integer :energy_production
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
