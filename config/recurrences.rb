=begin
#every 30.seconds, :poll_task do
every 5.minutes, :poll_task do
  tunnel = GmailConnection.new(pool.name,pool.hash)
  tunnel.poll
  tunnel.kill_tunnel           
end

#every 30.seconds, :pool_clear_task do
every 60.minutes, :pool_clear_task do
  tunnel = GmailConnection.new
  tunnel.pool_clear
  tunnel.kill_tunnel
end
=end