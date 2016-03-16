json.array!(@companies) do |company|
  json.extract! company, :id, :name, :pan_no, :tin, :vat_sales, :vat_purchase, :address, :owner
  json.url company_url(company, format: :json)
end
