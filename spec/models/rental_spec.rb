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

    it 'validates image is a valid URL' do
      valid_image_rental = FactoryGirl.build(:rental, image: 'http://example.com/image.jpg')
      expect(valid_image_rental).to be_valid
      invalid_image_rental = FactoryGirl.build(:rental, image: 'notavalidurl!')
      expect(invalid_image_rental).not_to be_valid
    end
  end

  describe 'factory' do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:rental)).to be_persisted
    end
  end
end
