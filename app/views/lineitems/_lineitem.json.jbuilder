json.extract! lineitem, :id, :invoice_id, :metalitem_id, :created_at, :updated_at
json.url lineitem_url(lineitem, format: :json)
