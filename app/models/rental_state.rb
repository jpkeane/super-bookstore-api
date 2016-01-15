# RentalState Model - Active Record model for the current state of a rental
class RentalState < ActiveRecord::Base
  has_many :rentals

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
