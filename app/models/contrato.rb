class Contrato < ActiveRecord::Base
  
  validates_presence_of :codigo
  validates_presence_of :nombre
  
end
