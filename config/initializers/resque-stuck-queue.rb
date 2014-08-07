require 'resque_stuck_queue' # or require 'resque/stuck_queue'
require 'logger'

loggerA = Logger.new($stdout)

#Offsets the failed job count by 200.  I think that the failed job count persists across restarts, so this should fix it.
fail_threshold = Resque.info[:failed] + 200

#Offsets the pending job count by 200.
pending_threshold = Resque.info[:pending]

# change to decent values that make sense for you
Resque::StuckQueue.config[:heartbeat_interval]       = 10.minutes
Resque::StuckQueue.config[:watcher_interval]         = 5.minutes
Resque::StuckQueue.config[:trigger_timeout]          = 20.minutes # acceptable lagtime
#Resque::StuckQueue.config[:warn_interval]            = 5.minutes  # keep on triggering periodically, default is only one trigger

# which queues to monitor
Resque::StuckQueue.config[:queues]                   = [:clearing,:invoking,:polling]

# handler for when a resque queue is being problematic
Resque::StuckQueue.config[:triggered_handler]         = proc { |bad_queue, lagtime|
  loggerA.info "[BAD] APPNAME #{Rails.env}'s Resque #{bad_queue} queue lagging job execution by #{lagtime} seconds."
  if Resque.info[:failed] > fail_threshold
    loggerA.fatal "The number of failed jobs has exceeded the acceptable threshold.  Scriviner will now terminate."
    raise fatal
  end

  if Resque.info[:pending] > pending_threshold
    loggerA.fatal "Queuing has exceeded the acceptable threshold.  Scrivener will now terminate."
    raise fatal
  end
}

# handler for when a resque queue recovers
Resque::StuckQueue.config[:recovered_handler]         = proc { |good_queue, lagtime|
  loggerA.info "[GOOD] APPNAME #{Rails.env}'s Resque #{good_queue} queue lagging job execution by #{lagtime} seconds."
}

# create a sync/unbuffered log
logpath = Rails.root.join('log', 'resque_stuck_queue.log')
logfile = File.open(logpath, "a")
logfile.sync = true
logger = Logger.new(logfile)
logger.formatter = Logger::Formatter.new
Resque::StuckQueue.config[:logger]                    = Logger.new($stdout)

Resque::StuckQueue.config[:redis]                     = Redis.new
