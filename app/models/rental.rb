class Rental < ActiveRecord::Base
  belongs_to :property_type
  belongs_to :rental_state
  belongs_to :landlord

  enum rent_payment_period: [ :pcm, :weekly, :quadweekly, :daily ]

  validates :title, presence: true
  validates :city, presence: true
  validates :bedrooms, presence: true, numericality: { greater_than: 0 }
  validates :image, url: { allow_nil: true, allow_blank: true}
  validates :daily_rent, presence: true, numericality: { greater_than: 0 }
  validates :rent_payment_period, presence: true

  def rent_as_pcm
    ((daily_rent*365)/12).ceil
  end

  def rent_as_weekly
    ((daily_rent*365)/52).ceil
  end

  def rent_as_quadweekly
    (((daily_rent*365)/52)*4).ceil
  end

  def rent_as_default_payment
    case rent_payment_period
      when 'pcm'
        return rent_as_pcm
      when 'weekly'
        return rent_as_weekly
      when 'quadweekly'
        return rent_as_quadweekly
      when 'daily'
        return daily_rent
    end
  end
end
