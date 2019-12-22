namespace :db do
    desc 'Rake task for populating DB'
    
        task :pop => :environment do
            require 'populator'
            require 'faker'
                    
            Manufacturer.delete_all
            Distributor.delete_all
            Product.delete_all
                
                
            Manufacturer.populate(100) do |manufacturer|
                manufacturer.name = Faker::Company.name
                manufacturer.country = Faker::Address.country
                manufacturer.date_of_foundation = Faker::Date.between(from: 10.years.ago, to: Date.today)
            end
                
            Distributor.populate(100) do |distributor|
                distributor.name = Faker::Company.name
                distributor.country = Faker::Address.country
            end
                
            Product.populate(100) do |product|
                product.name = Faker::Commerce.product_name
                product.manufacturer_id = Faker::Number.unique.between(from: 1, to: 100)
                product.distributor_id = Faker::Number.between(from: 1, to: 100)
            end
        end
    end