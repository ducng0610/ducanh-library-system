json.extract! subject, :id, :name, :description, :avaible, :created_at, :updated_at
json.url subject_url(subject, format: :json)
