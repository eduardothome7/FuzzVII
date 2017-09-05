json.extract! room, :id, :name, :studio_id, :picture, :description, :price_hour, :price_weekend, :price_late, :category_event, :created_at, :updated_at
json.url room_url(room, format: :json)
