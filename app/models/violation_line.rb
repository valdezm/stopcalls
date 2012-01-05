class ViolationLine < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :violation_type
  has_many :violation_logs
  accepts_nested_attributes_for :violation_logs
  accepts_nested_attributes_for :company
end
