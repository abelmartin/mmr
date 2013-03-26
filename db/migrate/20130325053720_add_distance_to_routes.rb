class AddDistanceToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :distance_in_miles, :decimal, null: false, default: 0, precision: 2
    add_column :routes, :distance_in_meters, :integer, null: false, default: 0
  end
end
