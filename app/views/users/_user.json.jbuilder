json.extract! user, :id, :name, :trigram, :created_at, :updated_at
json.url user_url(user, format: :json)
