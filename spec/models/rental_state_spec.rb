RSpec.describe RentalState, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
  end

  describe 'relationships' do
    it { is_expected.to have_many :rentals }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_presence_of :name }
  end
end
