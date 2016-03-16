json.array!(@purchase_orders) do |purchase_order|
  json.extract! purchase_order, :id, :supplier_id, :p_o_date, :shipping_address, :ship_to, :description, :quantity, :unit, :rate, :amount, :tax, :message, :material_id
  json.url purchase_order_url(purchase_order, format: :json)
end
