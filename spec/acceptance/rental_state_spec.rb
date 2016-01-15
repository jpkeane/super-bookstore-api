require 'rspec_api_documentation_helper'

RSpec.resource 'Rental States' do
  header 'Content-Type', 'application/vnd.api+json'

  shared_context 'rental-states parameters' do
    parameter 'type', <<-DESC, required: true
      The type of the resource. Must be rental-states.
    DESC
    let 'type' do
      'rental-states'
    end
    parameter 'name', <<-DESC, scope: :attributes, required: true
      The name of the rental-state.
    DESC
    parameter 'display-colour', <<-DESC, scope: :attributes, required: true
      The html display colour that will be used when displaying this state.
    DESC
  end

  get '/v1/rental-states' do
    include_context 'rental-states parameters'

    before do
      2.times do
        FactoryGirl.create(:rental_state)
      end
    end
    example_request 'GET /v1/rental-states' do
      expect(status).to eq 200
      rental_states = JSON.parse(response_body)
      expect(rental_states['data'].size).to eq 2
    end
  end

  get '/v1/rental-states/:id' do
    include_context 'rental-states parameters'

    let! :persisted_rental_state do
      FactoryGirl.create(:rental_state)
    end

    let :id do
      persisted_rental_state.id.to_s
    end

    example_request 'GET /v1/rental-states/:id' do
      expect(status).to eq 200
      rental_state = JSON.parse(response_body)
      expect(rental_state['data']['id']).to eq send(:id)
    end
  end
end
