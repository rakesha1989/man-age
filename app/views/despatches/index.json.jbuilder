json.array!(@despatches) do |despatch|
  json.extract! despatch, :id, :day, :product_id, :quantity, :unit, :client_id, :d_c_number
  json.url despatch_url(despatch, format: :json)
end
