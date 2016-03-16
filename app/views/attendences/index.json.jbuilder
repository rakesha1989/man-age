json.array!(@attendences) do |attendence|
  json.extract! attendence, :id, :employee_id, :day, :morning, :after_noon
  json.url attendence_url(attendence, format: :json)
end
