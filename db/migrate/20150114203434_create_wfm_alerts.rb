class CreateWfmAlerts < ActiveRecord::Migration
  def change
    create_table :wfm_alerts do |t|
      t.string :from
      t.string :subject
      t.integer :pool_id

      t.timestamps
    end
  end
end
