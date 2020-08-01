json.extract! post, :id, :title, :price, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
