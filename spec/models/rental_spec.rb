RSpec.describe Rental, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :title }
    it { is_expected.to have_attribute :city }
    it { is_expected.to have_attribute :bedrooms }
    it { is_expected.to have_attribute :image }
    it { is_expected.to have_attribute :daily_rent }
    it { is_expected.to have_attribute :rent_payment_period }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :property_type }
    it { is_expected.to belong_to :rental_state }
    it { is_expected.to belong_to :landlord }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :city }
    it { is_expected.to validate_presence_of :bedrooms }
    it { is_expected.to validate_numericality_of(:bedrooms).is_greater_than(0) }
    it { is_expected.to validate_presence_of :daily_rent }
    it { is_expected.to validate_numericality_of(:daily_rent).is_greater_than(0) }
    it { is_expected.to validate_presence_of :rent_payment_period }

    it 'validates image is a valid URL' do
      valid_image_rental = FactoryGirl.build(:rental, image: 'http://example.com/image.jpg')
      expect(valid_image_rental).to be_valid
      invalid_image_rental = FactoryGirl.build(:rental, image: 'notavalidurl!')
      expect(invalid_image_rental).not_to be_valid
    end

    it 'has the fulfillment_type enum definition' do
      expect(described_class.rent_payment_periods).to eq({
          'pcm' => 0,
          'weekly' => 1,
          'quadweekly' => 2,
          'daily' => 3,
      })
    end
  end

  describe 'methods' do
    before(:each) do
      @pcm_rental = FactoryGirl.create(:rental, daily_rent: 20, rent_payment_period: 'pcm')
      @weekly_rental = FactoryGirl.create(:rental, daily_rent: 20, rent_payment_period: 'weekly')
      @quadweekly_rental = FactoryGirl.create(:rental, daily_rent: 20, rent_payment_period: 'quadweekly')
      @daily_rental = FactoryGirl.create(:rental, daily_rent: 20, rent_payment_period: 'daily')
    end

    it 'has #rent_as_pcm' do
      expect(@pcm_rental.rent_as_pcm).to eq (609)
    end

    it 'has #rent_as_weekly' do
      expect(@weekly_rental.rent_as_weekly).to eq (141)
    end

    it 'has #rent_as_quadweekly' do
      expect(@quadweekly_rental.rent_as_quadweekly).to eq (562)
    end

    it 'has #rent_as_default_payment' do
      expect(@pcm_rental.rent_as_pcm).to eq (609)
      expect(@weekly_rental.rent_as_weekly).to eq (141)
      expect(@quadweekly_rental.rent_as_default_payment).to eq (562)
      expect(@daily_rental.rent_as_default_payment).to eq (20)
    end
  end

  describe 'factory' do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:rental)).to be_persisted
    end
  end
end
