class Attendant < Person
  attr_accessible :sector

  has_many :agendas
end
