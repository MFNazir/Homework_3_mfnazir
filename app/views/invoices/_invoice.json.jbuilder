json.extract! invoice, :id, :invoice_number, :description, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
