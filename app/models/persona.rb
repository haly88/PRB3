class Persona < ActiveRecord::Base
  
  validates_presence_of :codigo
  validates_presence_of :nombre
  
  belongs_to :localidad
 
  
end