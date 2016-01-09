namespace :seed do
  task :property_types => :environment do
    YAML.load_file(Rails.root.join('db', 'seeds', 'property_types.yml')).each do |attr|
      PropertyType.find_or_create_by!(attr)
    end
  end

  task :rental_states => :environment do
    YAML.load_file(Rails.root.join('db', 'seeds', 'rental_states.yml')).each do |attr|
      RentalState.find_or_create_by!(attr)
    end
  end
end