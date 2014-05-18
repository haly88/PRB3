class RemoveLocalidadFromPersonas < ActiveRecord::Migration
  def change
    remove_column :personas, :localidad, :string
  end
end
