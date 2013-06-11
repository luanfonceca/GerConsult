class Record < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  attr_accessible :text
end
