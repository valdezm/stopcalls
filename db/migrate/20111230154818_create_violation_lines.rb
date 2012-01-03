class CreateViolationLines < ActiveRecord::Migration
  def change
    create_table :violation_lines do |t|
      t.integer :company_id
      t.integer :user_id
      t.integer :violationtype_id
      t.integer :violationlog_id

      t.timestamps
    end
  end
end
