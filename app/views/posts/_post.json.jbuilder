json.extract! post, :id, :address, :price, :description, :image_url, :created_at, :updated_at
json.url post_url(post, format: :json)
