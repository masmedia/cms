class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      # We do not need to add id column which is a primary key for table
      # and is automatically added by Rails
      t.column "first_name", :string, :limit => 25
      # Shorter version for the column definition
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
  	drop_table :users
  end
end
