class AddEsOtroToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :es_otros, :boolean
    add_column :personas, :telefono, :string
    add_column :personas, :email, :string
    add_column :personas, :localidad, :string
    add_column :personas, :calle, :string
    add_column :personas, :numero, :string
    add_column :personas, :piso, :string
    add_column :personas, :departamento, :string
  end
end
