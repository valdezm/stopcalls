class Company < ActiveRecord::Base
  has_many :phone_lists
  has_many :violation_lines
end
