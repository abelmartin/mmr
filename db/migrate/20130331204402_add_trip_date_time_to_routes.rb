class AddTripDateTimeToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :trip_datetime, :datetime, null: false
  end
end
