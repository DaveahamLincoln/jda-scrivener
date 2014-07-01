class AddBindToFlood < ActiveRecord::Migration
  def change
    add_column :floods, :bind, :string
  end
end
