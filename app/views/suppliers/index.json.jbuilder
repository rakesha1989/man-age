json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :address, :phone_number, :info, :pan_no, :tin_no, :cst_reg, :contact_person
  json.url supplier_url(supplier, format: :json)
end
