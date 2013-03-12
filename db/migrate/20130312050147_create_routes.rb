class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.references :trip
      t.integer :start_location
      t.integer :end_location
      t.string :gmap_url

      t.timestamps
    end
    add_index :routes, :trip_id
  end
end
