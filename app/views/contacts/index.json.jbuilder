json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :designation, :email, :mobile, :client_id
  json.url contact_url(contact, format: :json)
end
