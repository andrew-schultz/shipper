class RemoveCaptainIdFromFollowships < ActiveRecord::Migration
  def change
    remove_column :followships, :captain_id, :integer
  end
end
