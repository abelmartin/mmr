class AddUserColumnToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :user_id, :integer, null: false
    remove_column :routes, :trip_id
  end
end
