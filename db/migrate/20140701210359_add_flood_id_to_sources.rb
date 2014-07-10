class AddFloodIdToSources < ActiveRecord::Migration
  def change
    add_column :sources, :flood_id, :integer
  end
end
