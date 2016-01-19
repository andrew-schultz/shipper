class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :boat, index: true, foreign_key: true
      t.string :name
      t.decimal :cost
      t.string :cargo
      t.integer :containers
      t.integer :origin
      t.integer :destination

      t.timestamps null: false
    end
  end
end
