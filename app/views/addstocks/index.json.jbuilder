json.array!(@addstocks) do |addstock|
  json.extract! addstock, :id, :stock, :unit, :material_id
  json.url addstock_url(addstock, format: :json)
end
