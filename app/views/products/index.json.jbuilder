json.array!(@products) do |product|
  json.extract! product, :id, :name, :dwg_no, :available_stock, :client_id, :unit_cost
  json.url product_url(product, format: :json)
end
