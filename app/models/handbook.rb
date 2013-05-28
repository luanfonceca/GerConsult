class Handbook < ActiveRecord::Base
  attr_accessible :crm
  belongs_to :doctor
  belongs_to :patient
end
