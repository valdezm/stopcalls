class AddViolationlineIdToViolationLog < ActiveRecord::Migration
  def up
    add_column :violation_logs, :violation_line_id, :integer
  end

  def down
    remove_column :violation_logs, :violation_line_id
  end
end