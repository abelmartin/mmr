class AddGMapsColumnToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :gmap_url, :string, null:true
  end
end
