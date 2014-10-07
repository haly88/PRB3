class Contrato < ActiveRecord::Base

	has_many :contrato_items, dependent: :destroy

	accepts_nested_attributes_for :contrato_items, :reject_if => lambda { |a| a[:monto].blank? }, :allow_destroy => true
  
  validates_presence_of :codigo
  validates_presence_of :nombre
  
end
