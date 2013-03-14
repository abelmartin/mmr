class AddOrderColumnToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :order, :integer, null: false, default: 0
  end
end
