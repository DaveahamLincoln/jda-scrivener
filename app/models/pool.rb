#Pools are simply gmail addresses which are either forwarded the alerts to be reported on or are added to
#  DLs for those alerts.

class Pool < ActiveRecord::Base
  #Pools belong to Floods.
  belongs_to :flood
end
