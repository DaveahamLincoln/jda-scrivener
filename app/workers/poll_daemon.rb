class PollDaemon
=begin

PoolDaemons are spawned by the FloodDaemon process, triggered by the FloodJob (30s after app start, 5m schedule), which runs 10m after startup and every 5m afterwards.  PoolDaemon creates an IMAP connection with the Pool indicated by the id argument and scrapes the content of the Pool, loading it into the database.

Future scaling note:  to add support for multiple database tables (based on parent Flood), add a target:string field to the Flood table, and pass the parent Flood id to the perform action, then change the load logic to retrieve the Class indicated by the name in the target field (I believe you'd use a .serialize method).

=end
  
  @queue = :polling
  
  def self.perform(idee)
    #Imports the gmail IMAP socket.
    require 'gmail'
    #Finds the pool associated with the pool id passed by the FloodDaemon
    @pool = Pool.find(idee)
    #Creates the IMAP tunnel between Scrivener and the pool
    @link = Gmail.new(@pool.name, @pool.auth_token)
    #Initializes a count to keep track of the number of alerts found.
    count = 0
    puts("Polling on " + @pool.name + " started.")
    #Selects each unread email in turn, aliasing it to unf.
    @link.inbox.emails(:unread).each do |unf|
      #Strips everything after the "@" sign from the contents of the "From" header and assigns it to fr.
      fr = unf.from[0].to_s.split("@")[0]
      #Assigns the subject header to su
      su = unf.subject
      #Creates a new Alert object with the parsed attributes.
      new_alert = Alert.new(from: fr, subject: su)
      #Saves the Alert object to the database (commit)
      new_alert.save!
      #Increments the counter.
      count = count + 1
    end
    
    puts("Polling on " + @pool.name + " complete.")
    puts(count.to_s + " alerts found.")
    puts("Next poll on " + @pool.name + " scheduled for " + (Time.now.in_time_zone("Eastern Time (US & Canada)") + 300).to_s + ".")
    #Releases the lock on the database to force garbage collection.
    ActiveRecord::Base.connection.close
  end
end
