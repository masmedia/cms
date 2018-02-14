class CreateSubjects < ActiveRecord::Migration[5.1]
  def up
    create_table :subjects do |t|
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps
    end
  end

  def down
  	# Do not need to drop index since the entire table is dropped
  	drop_table :subjects
  end
 
end
