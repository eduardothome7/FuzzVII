json.extract! event, :id, :title, :user_id, :calendar_id, :total_amount, :start_at, :duration, :invites, :description, :status_id, :created_at, :updated_at
json.url event_url(event, format: :json)
