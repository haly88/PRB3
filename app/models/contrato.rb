class Contrato < ActiveRecord::Base

	has_many :contrato_items, dependent: :destroy
  
  validates_presence_of :codigo
  validates_presence_of :nombre
  
end
