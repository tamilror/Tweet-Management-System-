json.extract! tweet_management, :id, :name, :description, :created_at, :updated_at
json.url tweet_management_url(tweet_management, format: :json)
