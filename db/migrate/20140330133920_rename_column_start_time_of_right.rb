class RenameColumnStartTimeOfRight < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :rights do |t|
        dir.up { rename_column :rights, :start_time, :delivery_time}
        dir.down {rename_column :rights, :delivery_time, :start_time}
      end
    end
  end
end
