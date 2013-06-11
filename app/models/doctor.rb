class Doctor < Person
  attr_accessible :crm, :speciality

  has_many :agendas
end
