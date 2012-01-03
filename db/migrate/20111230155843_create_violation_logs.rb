class CreateViolationLogs < ActiveRecord::Migration
  def change
    create_table :violation_logs do |t|
      t.text :comments
      t.string :contact_name
      t.string :date

      t.timestamps
    end
  end
end
