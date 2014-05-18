class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.string :codigo
      t.string :nombre
      t.boolean :activo
      t.string :descripcion
      t.string :carpeta
      t.date :fecha_inicio
      t.date :fecha_fin
      t.date :fecha_prorroga_hasta

      t.timestamps
    end
  end
end
