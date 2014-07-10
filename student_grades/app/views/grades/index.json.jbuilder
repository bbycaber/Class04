json.array!(@grades) do |grade|
  json.extract! grade, :id, :name, :score, :subject_id, :student_id
  json.url grade_url(grade, format: :json)
end
