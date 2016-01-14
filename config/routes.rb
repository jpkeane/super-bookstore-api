Rails.application.routes.draw do
  namespace 'v1' do
    jsonapi_resources :landlords
    jsonapi_resources :property_types
  end
end
