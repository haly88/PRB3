class AddMontoToContratos < ActiveRecord::Migration
  def change
    add_column :contratos, :monto, :decimal, precision: 15, scale: 6
  end
end
