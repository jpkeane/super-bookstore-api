RSpec.describe Landlord, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :address }
    it { is_expected.to have_attribute :telephone }
  end

  describe 'relationships' do
    it { is_expected.to have_many :rentals }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_presence_of :telephone }
  end
end
