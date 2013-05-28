class Patient < ActiveRecord::Base
  attr_accessible :agreement
  has_many :handbooks
  has_many :agendas
end
