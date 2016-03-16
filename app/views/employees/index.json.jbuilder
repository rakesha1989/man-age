json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :employee_id, :gender, :joining_date, :date_of_birth, :salary, :address, :mobile, :email
  json.url employee_url(employee, format: :json)
end
