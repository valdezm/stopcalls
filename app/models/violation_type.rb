class ViolationType < ActiveRecord::Base
  has_many :violation_lines
end
