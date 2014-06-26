class CreateFloods < ActiveRecord::Migration
  def change
    create_table :floods do |t|
      t.string :name

      t.timestamps
    end
  end
end
