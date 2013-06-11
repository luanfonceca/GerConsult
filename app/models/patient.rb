class Patient < Person
  attr_accessible :agreement

  has_many :agendas
end
