class Agenda < ActiveRecord::Base
  attr_accessible :date

  belongs_to :attendant
  belongs_to :doctor
  belongs_to :patient
end
