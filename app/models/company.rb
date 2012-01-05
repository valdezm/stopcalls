class Company < ActiveRecord::Base
  has_many :phone_lists
  has_many :violation_lines
  accepts_nested_attributes_for :phone_lists
end
