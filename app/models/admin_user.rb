class AdminUser < ApplicationRecord
# class User < ApplicationRecord  # Old table name
	# If you have changed the db name or inherit a legacy db code from some codebase, 
	# either add the line self.table_name = "legacy_db_table_name" or change the 
	# file name to the lower_case_singular - separated file name and then change
	# class name to CamelCase db_table_name to syncronize db with Rails conventions.

	# self.table_name = "admin_users"

	has_and_belongs_to_many :pages
	
	has_many :section_edits
	has_many :sections, :through => :section_edits

end
