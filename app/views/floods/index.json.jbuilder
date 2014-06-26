json.array!(@floods) do |flood|
  json.extract! flood, :id, :name
  json.url flood_url(flood, format: :json)
end
