json.array!(@posts) do |post|
  json.extract! post, :id, :name, :full_name
  json.url post_url(post, format: :json)
end
