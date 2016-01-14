require 'rspec_api_documentation_helper'

RSpec.resource 'Rentals' do
  header 'Content-Type', 'application/vnd.api+json'

  shared_context 'rentals parameters' do
    parameter 'type', <<-DESC, required: true
      The type of the resource. Must be rentals.
    DESC
    let 'type' do
      'rentals'
    end
    parameter 'title', <<-DESC, scope: :attributes, required: true
      The headline title of the rental.
    DESC
    parameter 'city', <<-DESC, scope: :attributes, required: true
      The city the rental is in.
    DESC
    parameter 'bedrooms', <<-DESC, scope: :attributes, required: true
      The amount of bedrooms the rental has.
    DESC
    parameter 'image', <<-DESC, scope: :attributes, required: true
      The image URL for the rental.
    DESC
    parameter 'daily-rent', <<-DESC, scope: :attributes, required: true
      The daily pro-rata rent for the rental.
    DESC
    parameter 'rent_payment_period', <<-DESC, scope: :attributes, required: true
      How often the rent has to be paid.
    DESC
  end

  get '/v1/rentals' do
    include_context 'rentals parameters'

    before do
      2.times do
        FactoryGirl.create(:rental)
      end
    end
    example_request 'GET /v1/rentals' do
      expect(status).to eq 200
      rentals = JSON.parse(response_body)
      expect(rentals['data'].size).to eq 2
    end
  end

  get '/v1/rentals/:id' do
    include_context 'rentals parameters'

    let! :persisted_rental do
      FactoryGirl.create(:rental)
    end

    let :id do
      persisted_rental.id.to_s
    end

    example_request 'GET /v1/rentals/:id' do
      expect(status).to eq 200
      rental = JSON.parse(response_body)
      expect(rental['data']['id']).to eq send(:id)
    end
  end
end