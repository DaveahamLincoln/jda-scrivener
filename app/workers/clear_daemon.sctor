class ClearDaemon
=begin

ClearDaemons are spawned by the ClearJob process which runs every 60m.  ClearDaemon creates an IMAP connection with the Pool indicated by the id argument and deletes all mail items that have the read flag set.  

=end
  
  @queue = :clearing

  def self.perform(id)
    #Imports the gmail IMAP socket.
    require 'gmail'
    #Finds the pool associated with the pool id passed by the FloodDaemon
    @pool = Pool.find(id)
    #Creates the IMAP tunnel between Scrivener and the pool
    @link = Gmail.new(@pool.name, @pool.auth_token)
    #Initializes a count.
    dCount = 0
    puts("Pool clear on " + @pool.name + " started.")
    #Iterates through all emails with the read flag set and aliases them to unf.
    @link.inbox.emails(:read).each do |unf|
      #Deletes each email
      unf.delete!
      #Increments the counter
      dCount = dCount + 1
    end

    puts("Pool clear on " + @pool.name + " complete.")
    puts(dCount.to_s + " alerts cleared.")
    puts("Next pool clear on " + @pool.name + " scheduled for " + (Time.now.in_time_zone("Eastern Time (US & Canada)") + 3600).to_s + ".")
    #Releases the lock on the database to force garbage collection.
    ActiveRecord::Base.connection.close
  end
end