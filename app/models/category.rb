class Category < ApplicationRecord
	has_many :photos
	belongs_to :articles

	scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('name') }

end
