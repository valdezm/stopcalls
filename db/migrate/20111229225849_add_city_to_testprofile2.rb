class AddCityToTestprofile2 < ActiveRecord::Migration
  
def self.up
  add_column "testprofile2s", "city_add", :string
end

def self.down

end
end

