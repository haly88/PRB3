class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|
      t.string :codigo
      t.string :nombre
      t.boolean :activo

      t.timestamps
    end
  end
end
