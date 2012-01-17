class AddPreferredContactTypeToTestProfiles2 < ActiveRecord::Migration
  def change
    add_column :testprofile2s, :preferred_contact_tpye, :string
  end
end
