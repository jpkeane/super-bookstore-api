RSpec.describe Rental, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :title }
  end

  describe 'validations' do

  end

  describe 'factory' do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:rental)).to be_persisted
    end
  end
end
