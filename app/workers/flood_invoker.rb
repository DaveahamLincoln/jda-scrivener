class FloodInvoker
=begin

FloodInvoker is called by FloodJob (/schedule.yml), which runs 30s after startup and every 5m afterwards.  It loads all Pools which belong to each Flood and enqueues a PollDaemon on the polling queue for each one.  These jobs are picked up and processed by available workers.

=end
  
  #FloodInvoker lives in the invoking queue.
  @queue = :invoking
  
  #Jobs must have a self.perform method (at minimum), which is called when the job is picked up by a 
  #worker
  def self.perform
    puts "Flooding pools."
    #Iterates over Floods.  Each Flood is aliased to f in turn.
    Flood.all.each do |f|
      #Iterates over all Pools belonging to Flood f (foreign key flood_id = f.id), aliasing them to p.
      Pool.where(flood_id: f.id).find_each do |p|    
        #Enqueues a PollDaemon job and passes the id of the pool to the job.
        Resque.enqueue(PollDaemon, p.id, f.bind)
        puts p.name + " flooded."
      end
    end
    #Releases the lock on the database to force garbage collection.
    ActiveRecord::Base.connection.close
  end
end
