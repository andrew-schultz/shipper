class AddLocationToBoats < ActiveRecord::Migration
  def change
    add_reference :boats, :location, index: true, foreign_key: true
  end
end
