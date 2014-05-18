class AddTipoDocumentoToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :tipo_documento, :string
  end
end
