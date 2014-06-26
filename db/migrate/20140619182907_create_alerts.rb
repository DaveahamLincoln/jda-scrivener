class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :from
      t.string :subject

      t.timestamps
    end
  end
end
