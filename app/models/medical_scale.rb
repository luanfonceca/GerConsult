class MedicalScale < ActiveRecord::Base
  attr_accessible :crm, :date
  belongs_to :doctor
end
