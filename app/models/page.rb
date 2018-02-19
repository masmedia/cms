class Page < ApplicationRecord

	# Added one-to-one relationship. The page 'belongs_to' subject
	# Don't forget to add subject 'has_one' page in Subject class
	# Also check the db migrations that a foreign key was added in pages table
	belongs_to :subject
	has_many :sections

end
