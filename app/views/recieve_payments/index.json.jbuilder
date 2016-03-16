json.array!(@recieve_payments) do |recieve_payment|
  json.extract! recieve_payment, :id, :client_id, :invoice_id, :email, :payment_date, :payment_method, :reference_no, :amount_recieved, :deposited_to
  json.url recieve_payment_url(recieve_payment, format: :json)
end
