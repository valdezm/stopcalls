class CreateViolationTypes < ActiveRecord::Migration
  def change
    create_table :violation_types do |t|
      t.text :description
      t.string :name
      t.boolean :is_referable

      t.timestamps
    end
  end
end
