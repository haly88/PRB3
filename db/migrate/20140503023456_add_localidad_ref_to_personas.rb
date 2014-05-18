class AddLocalidadRefToPersonas < ActiveRecord::Migration
  def change
    add_reference :personas, :localidad, index: true
  end
end
