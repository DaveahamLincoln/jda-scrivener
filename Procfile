web:    bundle exec rails server
worker: bundle exec rake resque:workers QUEUE='*' COUNT=3
clock:  bundle exec rake environment resque:scheduler
