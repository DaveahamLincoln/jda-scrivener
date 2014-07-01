class SourceOd
=begin

SourceOd is an on-demand job which scans the 'from' fields of all records belonging to the selected flood and populates new Source records for all sources not currently in the Sources table.

=end
  
  #SourceOd runs in the on-demand queue.
  @queue = :od
  
  def self.perform(flood_id)
    puts "Loading flood."
    #Loads the flood based on the flood id posted to the flood#source action.
    flood = Flood.find(flood_id)
    puts flood.name + " loaded."
    puts "Binding " + flood.name + "."
    #Extracts a class reference from the bind field of flood and instantiates it as a callable object.   
    # "Bind" is a pointer to the particular "alert table" that the flood populates.  There are other
    #ways of doing this, but this one provides a way to lock down binding by forcing DBAs to manually 
    #configure the bind field.
    storage_instance = flood.bind.constantize
    puts flood.name + " bound to " + storage_instance.to_s + "."
    #Initializes a count of added sources.
    count = 0
    #Iterates through the bound table and aliases each record to rec in turn.
    #i.e. if Alerts is the bound table, storage_instance.all.each == Alert.all.each 
    storage_instance.all.each do |rec|
      #Checks to see if it is not the case that a Source with the name of rec.from exists
      if !Source.where(name: rec.from).exists?
        #Increments the counter.
        count += 1
        #Creates a new Source record
        source = Source.new(name: rec.from)
        #Saves the record.
        source.save!
      end
    end
    puts count.to_s + " sources added."
    #Releases the lock on the database to force garbage collection.
    ActiveRecord::Base.connection.close
  end
end