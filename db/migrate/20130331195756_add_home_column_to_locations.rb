class AddHomeColumnToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :hq, :boolean, null: false, default: false
  end
end
