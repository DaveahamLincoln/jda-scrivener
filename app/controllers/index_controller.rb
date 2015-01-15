class IndexController < ApplicationController
  def index
  end
  
  def download_pdf
  send_file(
    "#{Rails.root}/public/alerts_database.sqlite3",
    filename: Digest::MD5.hexdigest(File.read("db/development.sqlite3")).to_s + ".sqlite3",
  )
  end
  
end
