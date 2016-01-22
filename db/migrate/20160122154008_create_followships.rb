class CreateFollowships < ActiveRecord::Migration
  def change
    create_table :followships do |t|
      t.integer :user_id
      t.integer :ship_id
      t.timestamps null: false
    end
  end
end
