class DropTripsTable < ActiveRecord::Migration
  def up
    drop_table :trips
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "Can't recover the trips table"
  end
end
