json.extract! metalitem, :id, :description, :quantity, :unit_price, :created_at, :updated_at
json.url metalitem_url(metalitem, format: :json)
