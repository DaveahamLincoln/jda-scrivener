class BackupDaemon
=begin

=end
  
  #
  @queue = :od
  
  #
  #
  def self.perform
    puts "Packing up DB."
    FileUtils.copy('db/development.sqlite3','public/alerts_database.sqlite3')
    puts "DB Packed"
  end
end

