class RentalState < ActiveRecord::Base
  has_many :rentals

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validate :_display_colour_is_valid_html_colour

  def _display_colour_is_valid_html_colour
    return unless display_colour
    invalid_colour = /^#(?:[0-9a-f]{3})(?:[0-9a-f]{3})?$/i.match(display_colour).nil?
    if invalid_colour
      errors.add :display_colour, 'display_colour is not a valid HTML colour'
    end
  end
end
