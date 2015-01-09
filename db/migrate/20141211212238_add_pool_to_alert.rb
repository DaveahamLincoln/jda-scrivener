class AddPoolToAlert < ActiveRecord::Migration
  def change
    add_column :alerts, :pool_id, :integer
  end
end
