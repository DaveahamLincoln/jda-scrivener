json.array!(@alerts) do |alert|
  json.extract! alert, :id, :from, :subject
  json.url alert_url(alert, format: :json)
end
