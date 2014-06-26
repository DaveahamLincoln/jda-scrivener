class CreateGmailConnections < ActiveRecord::Migration
  def change
    create_table :gmail_connections do |t|

      t.timestamps
    end
  end
end
