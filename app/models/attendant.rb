class Attendant < ActiveRecord::Base
  attr_accessible :sector
  has_many :agendas
end
