class AddStateToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :state, :integer
  end
end
