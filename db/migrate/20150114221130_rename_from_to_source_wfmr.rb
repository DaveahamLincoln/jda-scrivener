class RenameFromToSourceWfmr < ActiveRecord::Migration
  def change

	rename_column :wfm_alerts, :from, :source
	add_column :wfm_alerts, :received, :datetime
  end
end
