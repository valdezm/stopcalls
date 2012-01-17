class IntakeForm < ActiveRecord::Base
  belongs_to :user
  has_one :additional_service
  has_one :intake_question
  accepts_nested_attributes_for :additional_service
  accepts_nested_attributes_for :intake_question
end
