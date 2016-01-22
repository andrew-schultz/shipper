class RemoveUserIdFromFollowships < ActiveRecord::Migration
  def change
    remove_column :followships, :user_id, :integer
  end
end
