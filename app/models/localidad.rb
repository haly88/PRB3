class Localidad < ActiveRecord::Base
  
  validates_presence_of :codigo
  validates_presence_of :nombre
  
  has_many :personas

end
