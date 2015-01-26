#This file controls the flow of data to and between the various root routes.  For instance, the
#  index action handles the information available to the / view.

class IndexController < ApplicationController
  def index
  end
  
  def download_pdf
    #!!!HACK- A cheap way of creating a download link.  This one points to the bundled sqlite database.
  send_file(
    "#{Rails.root}/public/alerts_database.sqlite3",
    filename: Digest::MD5.hexdigest(File.read("db/development.sqlite3")).to_s + ".sqlite3",
  )
  end
  
end
