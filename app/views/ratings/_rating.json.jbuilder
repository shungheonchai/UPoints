json.extract! rating, :id, :user_id, :location, :communication, :payment, :overall, :created_at, :updated_at
json.url rating_url(rating, format: :json)