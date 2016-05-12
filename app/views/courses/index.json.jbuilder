json.array!(@courses) do |course|
  json.extract! course, :id, :course_name, :semester, :year, :teacher_id
  json.url course_url(course, format: :json)
end
