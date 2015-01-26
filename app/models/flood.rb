#A Flood is a collection of Pools with a Bind to a table.
#
#Concept is this:
#
#  A department (reporting unit) like "ESO" would have its own Flood.
#    Each Pool to be monitored for ESO will be configured to belong to the Flood.
#    Each reporting unit has a Bind to a table, which it will feed into.
#      For instance, the ESO Flood is currently bound to the Alerts table.
#
#  Why would you want to do this?
#    Let's say you want to have a reporting unit like "Support"
#    The Support unit would need to pull from multiple Pool addresses, i.e. jda.eso.scrivener@gmail.com & 
#      jda.wfmr.scrivener@gmail.com
#    Instead of smashing the Alert and WFMAlert tables together for reporting, you can add new pools
#      for jda.eso.scrivener@gmail.com & jda.wfmr.scrivener@gmail.com which are assigned to the Support 
#      Flood, which has a Bind to some table Xs.  We can then report on table Xs, which contains the 
#      aggregate data for ESO and WFMR.

class Flood < ActiveRecord::Base
  #Pools belong to Floods
  has_many :pools
  #Sources belong to Floods
  has_many :sources
end
