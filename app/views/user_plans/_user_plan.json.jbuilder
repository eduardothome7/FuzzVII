json.extract! user_plan, :id, :user_id, :plan_id, :payment_type, :value, :duration_months, :status, :created_at, :cancelled_at, :created_at, :updated_at
json.url user_plan_url(user_plan, format: :json)
