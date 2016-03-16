json.array!(@expenses) do |expense|
  json.extract! expense, :id, :supplier_id, :payee_name, :payment_method, :payment_date, :email, :reference_no, :description, :amount, :tax
  json.url expense_url(expense, format: :json)
end
