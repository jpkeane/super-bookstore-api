require 'rspec_api_documentation_helper'

RSpec.resource 'Landlords' do
  header 'Content-Type', 'application/vnd.api+json'

  shared_context 'landlord parameters' do
    parameter 'type', <<-DESC, required: true
      The type of the resource. Must be landlords.
    DESC
    let 'type' do
      'landlords'
    end
    parameter 'name', <<-DESC, scope: :attributes, required: true
      The name of the landlord.
    DESC
    parameter 'address', <<-DESC, scope: :attributes, required: true
      The address of the landlord.
    DESC
    parameter 'telephone', <<-DESC, scope: :attributes, required: true
      The telephone of the landlord.
    DESC
  end

  get '/v1/landlords' do
    include_context 'landlord parameters'

    before do
      2.times do
        FactoryGirl.create(:landlord)
      end
    end
    example_request 'GET /v1/landlords' do
      expect(status).to eq 200
      landlords = JSON.parse(response_body)
      expect(landlords['data'].size).to eq 2
    end
  end

  get '/v1/landlords/:id' do
    include_context 'landlord parameters'

    let! :persisted_landlord do
      FactoryGirl.create(:landlord)
    end

    let :id do
      persisted_landlord.id.to_s
    end

    example_request 'GET /v1/landlords/:id' do
      expect(status).to eq 200
      landlord = JSON.parse(response_body)
      expect(landlord['data']['id']).to eq send(:id)
    end
  end
end