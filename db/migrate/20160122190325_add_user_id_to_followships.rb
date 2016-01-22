class AddUserIdToFollowships < ActiveRecord::Migration
  def change
  	add_column :followships, :user_id, :integer
  	add_column :followships, :boat_id, :integer
  	remove_column :followships, :ship_id, :integer
  end
end
