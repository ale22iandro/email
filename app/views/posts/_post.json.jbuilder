json.extract! post, :id, :user, :text, :created_at, :updated_at
json.url post_url(post, format: :json)
