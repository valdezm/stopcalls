class CreateAdditionalServices < ActiveRecord::Migration
  def change
    create_table :additional_services do |t|
      t.boolean :learn_how_to_sue
      t.boolean :learn_how_to_reduce
      t.boolean :lower_mortgage
      t.boolean :correct_mistakes
      t.boolean :hire_lawyer
      t.integer :intake_form_id

      t.timestamps
    end
  end
end
