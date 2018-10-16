class CreateTemperatures < ActiveRecord::Migration[5.2]
  def change
    create_table :temperatures do |t|
      t.float :value
      t.string :unit
      t.references :Device, foreign_key: true

      t.timestamps
    end
  end
end
