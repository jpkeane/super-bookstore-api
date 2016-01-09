RSpec.describe RentalState, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :display_colour }
  end

  describe 'relationships' do
    it { is_expected.to have_many :rentals }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_presence_of :name }

    it 'validates display_color is a valid HTML colour' do
      invalid_rental_state = FactoryGirl.build(:rental_state, display_colour: 'invalid')
      invalid_rental_state.valid?
      expect(invalid_rental_state.errors[:display_colour]).to eq ['display_colour is not a valid HTML colour']

      invalid_rental_state = FactoryGirl.build(:rental_state)
      invalid_rental_state.valid?
      expect(invalid_rental_state).to be_valid
    end
  end

end
