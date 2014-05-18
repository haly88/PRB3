class RemoveCamposFromPersona < ActiveRecord::Migration
  def change
    remove_column :personas, :esGarante, :boolean
    remove_column :personas, :esPropietario, :boolean
    remove_column :personas, :esInquilino, :boolean
    add_column :personas, :es_garante, :boolean
    add_column :personas, :es_propietario, :boolean
    add_column :personas, :es_inquilino, :boolean
  end
end
