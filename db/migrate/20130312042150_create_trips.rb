class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :user
      t.datetime :trip_date
    end
    add_index :trips, :user_id
  end
end
