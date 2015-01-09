class RenameFromToSource < ActiveRecord::Migration
  def change
    rename_column :alerts, :from, :source
  end
end
