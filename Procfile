web:    bundle exec rails server -p 3001
worker: bundle exec rake resque:workers QUEUE='*' COUNT=3
clock:  bundle exec rake environment resque:scheduler
