class CreateTestprofile2s < ActiveRecord::Migration
  def change
    create_table :testprofile2s do |t|
      t.string :f_name
      t.string :l_name
      t.string :line_add
      t.string :state_add
      t.integer :zip_add

      t.timestamps
    end
  end
end
