# RentalState Model - Active Record model for the current state of a rental
class RentalState < ActiveRecord::Base
  has_many :rentals

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validate :_display_colour_is_valid_html_colour

  def _display_colour_is_valid_html_colour
    return unless display_colour
    # Check against HTML colour RegExp
    return unless /^#(?:[0-9a-f]{3})(?:[0-9a-f]{3})?$/i.match(display_colour).nil?
    errors.add :display_colour, 'display_colour is not a valid HTML colour'
  end
end
