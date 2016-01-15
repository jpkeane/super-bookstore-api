require 'rspec_api_documentation_helper'

RSpec.resource 'Property Types' do
  header 'Content-Type', 'application/vnd.api+json'

  shared_context 'property-type parameters' do
    parameter 'type', <<-DESC, required: true
      The type of the resource. Must be landlords.
    DESC
    let 'type' do
      'property-types'
    end
    parameter 'name', <<-DESC, scope: :attributes, required: true
      The name of the property-type.
    DESC
  end

  get '/v1/property-types' do
    include_context 'property-type parameters'

    before do
      2.times do
        FactoryGirl.create(:property_type)
      end
    end
    example_request 'GET /v1/property-types' do
      expect(status).to eq 200
      landlords = JSON.parse(response_body)
      expect(landlords['data'].size).to eq 2
    end
  end

  get '/v1/property-types/:id' do
    include_context 'property-type parameters'

    let! :persisted_property_type do
      FactoryGirl.create(:property_type)
    end

    let :id do
      persisted_property_type.id.to_s
    end

    example_request 'GET /v1/property-types/:id' do
      expect(status).to eq 200
      landlord = JSON.parse(response_body)
      expect(landlord['data']['id']).to eq send(:id)
    end
  end
end
