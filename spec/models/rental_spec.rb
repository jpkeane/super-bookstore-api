RSpec.describe Rental, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :title }
    it { is_expected.to have_attribute :city }
    it { is_expected.to have_attribute :bedrooms }
    it { is_expected.to have_attribute :image }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :property_type }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :city }
    it { is_expected.to validate_presence_of :bedrooms }
    it { is_expected.to validate_numericality_of(:bedrooms).is_greater_than(0) }
  end

  describe 'factory' do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:rental)).to be_persisted
    end
  end
end
