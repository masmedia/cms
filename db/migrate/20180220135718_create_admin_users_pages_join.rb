class CreateAdminUsersPagesJoin < ActiveRecord::Migration[5.1]
  def up
  	# We don't need an id for this join table. All we want is to join
    create_table :admin_users_pages, :id => false do |t|
    	t.integer "admin_user_id"	# Foreign key
    	t.integer "page_id"			# Foreign key
    end

    # Don't forget to index for quick search. In this one instead of 
    # adding separate index, we use an array for column definitions
    # and the order does not matter. 
    add_index("admin_users_pages", ["admin_user_id", "page_id"])
  end

  def down
  	drop_table :admin_users_pages
  end
end
