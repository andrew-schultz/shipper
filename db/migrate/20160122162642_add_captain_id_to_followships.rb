class AddCaptainIdToFollowships < ActiveRecord::Migration
  def change
  	add_column :followships, :captain_id, :integer
  end
end
