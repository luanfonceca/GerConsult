class Doctor < ActiveRecord::Base
  attr_accessible :crm, :specialty
  has_many :medical_scales
  has_many :handbooks
  has_many :agendas
end
