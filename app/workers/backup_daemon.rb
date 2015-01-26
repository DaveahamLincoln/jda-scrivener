class BackupDaemon
=begin

Copies the database to a public folder under a filename that can be accessed by the download link on the root page.

=end
  
  #BackupDaemon runs on th OnDemand queue- which probably should be changed, since it's not really an 
  #  on-demand job.
  @queue = :od
  
  #Jobs must have a self.perform method (at minimum), which is called when the job is picked up by a 
  #worker
  def self.perform
    puts "Packing up DB."
    FileUtils.copy('db/development.sqlite3','public/alerts_database.sqlite3')
    puts "DB Packed"
  end
end

