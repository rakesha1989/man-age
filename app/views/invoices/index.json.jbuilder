json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :client_id, :invoice_number, :day, :terms, :due_date, :product_id, :description, :quantity, :unit, :rate, :amount, :tax, :message
  json.url invoice_url(invoice, format: :json)
end
