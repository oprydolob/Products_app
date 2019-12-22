class Product < ApplicationRecord
    belongs_to :manufacturer
    belongs_to :distributor
end
