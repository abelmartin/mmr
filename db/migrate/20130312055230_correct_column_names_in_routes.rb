class CorrectColumnNamesInRoutes < ActiveRecord::Migration
  def up
    rename_column :routes, :start_location, :start_location_id
    rename_column :routes, :end_location, :end_location_id
  end

  def down
  end
end
