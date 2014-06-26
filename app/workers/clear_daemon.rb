class ClearDaemon
=begin

ClearDaemons are spawned by the ClearJob process which runs every 60m.  ClearDaemon creates an IMAP connection with the Pool indicated by the id argument and deletes the 

Future scaling note:  to add support for multiple database tables (based on parent Flood), add a target:string field to the Flood table, and pass the parent Flood id to the perform action, then change the load logic to retrieve the Class indicated by the name in the target field (I believe you'd use a .serialize method).

=end
  
  @queue = :clearing
  
  def self.perform(id)
    require 'gmail'
      @pool = Pool.find(id)
      @link = Gmail.new(@pool.name, @pool.auth_token)
      dCount = 0

      puts("Pool clear on " + @pool.name + " started.")
      @link.inbox.emails(:read).each do |unf|
        unf.delete!
        dCount = dCount + 1
      end
    
    puts("Pool clear on " + @pool.name + " complete.")
    puts(dCount.to_s + " alerts cleared.")
    puts("Next pool clear on " + @pool.name + " scheduled for " + (Time.now.in_time_zone("Eastern Time (US & Canada)") + 3600).to_s + ".")
    ActiveRecord::Base.connection.close
  end
end