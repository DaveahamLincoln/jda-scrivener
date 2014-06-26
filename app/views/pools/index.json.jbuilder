json.array!(@pools) do |pool|
  json.extract! pool, :id, :name, :auth_token, :flood_id
  json.url pool_url(pool, format: :json)
end
