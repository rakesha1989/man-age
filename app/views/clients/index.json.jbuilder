json.array!(@clients) do |client|
  json.extract! client, :id, :name, :address, :phone_number, :info, :pan_no, :tin_no, :contact_person, :cst_reg
  json.url client_url(client, format: :json)
end
