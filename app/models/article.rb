class Article < ApplicationRecord
  #relationships
  has_one :category

  #validations
  validates_presence_of :title
  validates_presence_of :content

  #scopes
  scope :active,       -> { where('active = ?', true) }
  scope :alphabetical, -> { order('title') }

end
