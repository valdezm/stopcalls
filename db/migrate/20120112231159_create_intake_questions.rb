class CreateIntakeQuestions < ActiveRecord::Migration
  def change
    create_table :intake_questions do |t|
      t.boolean :live_in_count
      t.boolean :sign_contract
      t.boolean :contacting_other
      t.boolean :recieved_collection_letters
      t.boolean :harrasing_abusing
      t.boolean :false_misleading
      t.boolean :unfair_methods
      t.boolean :paid_money
      t.boolean :bank_acoount
      t.integer :intake_form_id

      t.timestamps
    end
  end
end
