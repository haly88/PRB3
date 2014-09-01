class CreateContratoItems < ActiveRecord::Migration
  def change
    create_table :contrato_items do |t|
      t.datetime :fecha
      t.decimal :monto
      t.references :contrato, index: true

      t.timestamps
    end
  end
end
