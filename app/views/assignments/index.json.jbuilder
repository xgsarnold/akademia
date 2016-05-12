json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :assignment_name, :grade, :weight, :assigned_at, :due_at, :course_id, :student_id
  json.url assignment_url(assignment, format: :json)
end
