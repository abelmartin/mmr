class ChangeLatitudeLongitudeIntoCoordinatesOnLocations < ActiveRecord::Migration
  def up
    remove_column :locations, :latitude
    remove_column :locations, :longitude
    add_column :locations, :coordinates, :string, null: true
  end

  def down
    add_column :locations, :latitude, :string, null: true
    add_column :locations, :longitude, :string, null: true
    remove_column :locations, :coordinates
  end
end
