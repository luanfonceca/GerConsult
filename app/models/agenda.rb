class Agenda < ActiveRecord::Base
  attr_accessible :crm, :date, :specialty
  belongs_to :doctor
  belongs_to :patient
  belongs_to :attendant
end
