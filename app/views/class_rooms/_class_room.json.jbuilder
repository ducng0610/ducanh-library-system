json.extract! class_room, :id, :name, :available, :start_time, :student_number, :description, :created_at, :updated_at
json.url class_room_url(class_room, format: :json)
