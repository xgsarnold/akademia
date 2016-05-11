json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :person_id, :person_type
  json.url user_url(user, format: :json)
end
