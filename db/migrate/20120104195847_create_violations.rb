class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|

      t.timestamps
    end
  end
end
