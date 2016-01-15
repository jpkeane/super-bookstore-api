# PropertyType Model - Active Record model for the type of property of a rental
class PropertyType < ActiveRecord::Base
  has_many :rentals

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
