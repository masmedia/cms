class Subject < ApplicationRecord

	# Added one-to-many relationship. The subject 'has_many' pages
	# Don't forget to add page belongs_to :subject in Page class
	has_many :pages

	# Named scopes are evaluated when called!
	scope :visible, lambda { where(:visible => true)   }
	scope :invisible, lambda { where(:visible => false)   }
	scope :sorted, lambda { order("position ASC")   }
	scope :newest_first, lambda { order("created_at DESC") }

	# The query might come from user. % sign interpolates the string coming from 
	# the user and ? mark sanitizes it and makes it safe from SQL injection
	scope :search, lambda {  |query|  where(["name LIKE ?", "%#{query}%"])  }

	validates_presence_of :name  # Name is required field in the form

end
