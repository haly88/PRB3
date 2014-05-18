class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :codigo
      t.string :nombre
      t.boolean :activo
      t.string :descripcion
      t.boolean :esInquilino
      t.boolean :esPropietario
      t.boolean :esGarante

      t.timestamps
    end
  end
end
