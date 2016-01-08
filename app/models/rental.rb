class Rental < ActiveRecord::Base
  belongs_to :property_type

  validates :title, presence: true
  validates :city, presence: true
  validates :bedrooms, presence: true, numericality: { greater_than: 0 }
  validates :image, url: { allow_nil: true, allow_blank: true}
end
