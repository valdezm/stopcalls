class AddUserIdToTestprofile2 < ActiveRecord::Migration
  def up
    add_column :testprofile2s, :user_id, :integer
  end

  def down
    remove_column :testprofile2s, :user_id
  end
end