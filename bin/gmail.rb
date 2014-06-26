require 'gmail'
Gmail.new('scrivenerxappxtest', '6518ec3bdad3d916f61bdf16d243d3e5') do |gmail|
  # play with your gmail...
  gmail.inbox.emails(:unread).each do |unf|
    fr = unf.from[0].to_s.split("@")[0]
    print fr
    puts unf.subject
    if unf.subject == "test2"
      new_alert = Alert.new(from: fr, subject: unf.subject)
      new_alert.save!
      print "hit"
    end
  end
end
