json.array!(@users) do |user|
  json.extract! user, :id, :email, :hashed_password, :salt, :nickname, :access_level
  json.url user_url(user, format: :json)
end
