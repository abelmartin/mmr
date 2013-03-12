class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :user
      t.string :address, null: false
      t.string :latitude, null: true
      t.string :longitude, null: true

      t.timestamps
    end
    add_index :locations, :user_id
  end
end
