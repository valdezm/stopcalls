class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :add_line
      t.text :description
      t.string :state_add
      t.integer :zip_add

      t.timestamps
    end
  end
end
