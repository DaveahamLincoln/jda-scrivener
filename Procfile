web: bundle exec rails server
overwatch: bundle exec rake --trace resque:stuck_queue
overseer: bundle exec rake resque:workers COUNT=2 QUEUE='app'
invokers: bundle exec rake resque:workers COUNT=3 QUEUE='invoking'
cleaners: bundle exec rake resque:workers COUNT=5 QUEUE='clearing'
workers: bundle exec rake resque:workers COUNT=15 QUEUE='*'
clock: bundle exec rake environment resque:scheduler
