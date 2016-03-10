json.array!(@photos) do |photo|
  json.extract! photo, :id, :username, :caption, :likes_count, :url
  json.url photo_url(photo, format: :json)
end
