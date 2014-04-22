class Article < ActiveRecord::Base
	# relationships
	belongs_to :category
	
	# scopes
	scope :alphabetical, -> { order('name') }
	scope :active, -> { where(active: true) }
end
