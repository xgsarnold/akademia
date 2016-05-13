json.array!(@course_registrations) do |course_registration|
  json.extract! course_registration, :id
  json.url course_registration_url(course_registration, format: :json)
end
