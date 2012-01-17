class AddPhoneNumberToTestProfiles2 < ActiveRecord::Migration
  def change
    add_column :testprofile2s, :phone_number, :integer
  end
end
