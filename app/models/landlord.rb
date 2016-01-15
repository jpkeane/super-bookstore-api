# Landlord Model - Active Record model for the Landlords
class Landlord < ActiveRecord::Base
  has_many :rentals

  validates :name, presence: true
  validates :address, presence: true
  validates :telephone, presence: true
end
