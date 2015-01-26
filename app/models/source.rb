#Sources are records for email adresses which actually send the alerts to the Pool.
#
#Not very useful if you just have one person forwarding alerts to the Pool, but if you add it to the DL,
#  you'll get an additional dimension for reporting.  See /views/alerts/index.html.erb for usage:
#   
#  <center><h2>Alerts by Source</h2></center> 
#  <%= pie_chart(Alert.group(:source).count, height: "500px") %>
#
#To populate Sources, you need to run the source_od.rb on-demand job for a given Flood.  You can do this 
#  by clicking the "Populate Sources" link on the /floods/#{flood_id} page for the flood in question.
#  To get there you go to /floods and then hit the show button for the flood you want to modify.

class Source < ActiveRecord::Base
  belongs_to :flood
end
