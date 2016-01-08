class PropertyType < ActiveRecord::Base
  has_many :rentals

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
