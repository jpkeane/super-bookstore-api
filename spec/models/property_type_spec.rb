RSpec.describe PropertyType, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_presence_of :name}
  end

  describe 'factory' do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:property_type)).to be_persisted
    end
  end
end
