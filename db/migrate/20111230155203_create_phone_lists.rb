class CreatePhoneLists < ActiveRecord::Migration
  def change
    create_table :phone_lists do |t|
      t.integer :area_code
      t.integer :phone_num
      t.integer :company_id

      t.timestamps
    end
  end
end
