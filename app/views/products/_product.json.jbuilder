json.extract! product, :id, :name, :manufacturer_id, :distributor_id, :created_at, :updated_at
json.url product_url(product, format: :json)
