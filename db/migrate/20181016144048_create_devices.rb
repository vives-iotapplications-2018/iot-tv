class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :dev-eui
      t.references :Location, foreign_key: true

      t.timestamps
    end
  end
end
