class CreateTestprofiles < ActiveRecord::Migration
  def change
    create_table :testprofiles do |t|
      t.string :f_name
      t.string :l_name
      t.string :line_add
      t.string :state_add
      t.integer :zip_add

      t.timestamps
    end
  end
end
