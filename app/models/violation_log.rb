class ViolationLog < ActiveRecord::Base
  belongs_to :violation_line
end
