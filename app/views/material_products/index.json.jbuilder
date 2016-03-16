json.array!(@material_products) do |material_product|
  json.extract! material_product, :id, :material_id, :product_id
  json.url material_product_url(material_product, format: :json)
end
