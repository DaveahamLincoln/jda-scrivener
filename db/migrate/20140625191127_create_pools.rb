class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name
      t.string :auth_token
      t.integer :flood_id

      t.timestamps
    end
  end
end
