json.array!(@wfm_alerts) do |wfm_alert|
  json.extract! wfm_alert, :id, :from, :subject, :pool_id
  json.url wfm_alert_url(wfm_alert, format: :json)
end
