class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.string :telefono
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
