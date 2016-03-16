json.array!(@materials) do |material|
  json.extract! material, :id, :name, :stock, :unit
  json.url material_url(material, format: :json)
end
