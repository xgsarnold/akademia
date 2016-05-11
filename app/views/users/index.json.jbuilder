json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :person_id_id, :person_id_type, :person_type
  json.url user_url(user, format: :json)
end
