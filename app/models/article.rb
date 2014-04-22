class Article < ActiveRecord::Base
	# relationships
	belongs_to :category
	
	# scopes
	scope :alphabetical, -> { order('title') }
	scope :active, -> { where(active: true) }
end
