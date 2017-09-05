json.extract! calendar, :id, :title, :room_id, :start_at, :end_at, :hour_interval, :hour_limit, :color, :public, :created_at, :updated_at
json.url calendar_url(calendar, format: :json)
