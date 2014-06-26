class GmailConnection < ActiveRecord::Base
=begin
  def initialize(name,hash)
    require 'gmail'
    #Needs to be obscured.
    #@link = Gmail.new('scrivenerxappxtest', '6518ec3bdad3d916f61bdf16d243d3e5')
    #@link = Gmail.new('jda.eso.scrivener', 'eb308b92f58aee12a8dc6c2333dab216f4a68889')
    @link = Gmail.new(name, hash)
  end
  
  def poll
    count = 0
    puts("Polling started.")
    # Play with your gmail...
    @link.inbox.emails(:unread).each do |unf|
      fr = unf.from[0].to_s.split("@")[0]
      su = unf.subject
      new_alert = Alert.new(from: fr, subject: su)
      new_alert.save!
      count = count + 1
    end
    puts("Polling complete.")
    puts(count.to_s + " alerts found.")
    puts("Next poll scheduled for " + (Time.now.in_time_zone("Eastern Time (US & Canada)") + 300).to_s + ".")
  end
  
  def pool_clear
    dCount = 0
      
    puts("Pool clear started.")
    @link.inbox.emails(:read).each do |unf|
        unf.delete!
      dCount = dCount + 1
    end
    puts("Pool clear complete.")
    puts(dCount.to_s + " alerts cleared.")
    puts("Next pool clear scheduled for " + (Time.now.in_time_zone("Eastern Time (US & Canada)") + 3600).to_s + ".")
  end
  
  def kill_tunnel
    ActiveRecord::Base.connection.close
  end
=end
end
  
