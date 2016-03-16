json.array!(@paybills) do |paybill|
  json.extract! paybill, :id, :supplier_id, :payment_method, :payment_date, :bill_no, :refernce_no, :description, :amount, :float
  json.url paybill_url(paybill, format: :json)
end
