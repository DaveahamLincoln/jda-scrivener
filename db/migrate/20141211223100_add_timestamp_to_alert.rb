class AddTimestampToAlert < ActiveRecord::Migration
  def change
    add_column :alerts, :received, :datetime
  end
end
