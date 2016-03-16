json.array!(@accounts) do |account|
  json.extract! account, :id, :company_id, :invoice_id, :bill_id, :recieve_payment_id, :expense_id
  json.url account_url(account, format: :json)
end
