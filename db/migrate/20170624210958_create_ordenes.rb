class CreateOrdenes < ActiveRecord::Migration[5.0]
  def change
    create_table :ordenes do |t|
      t.integer :monto
      t.timestamps
      t.belongs_to :comercio
      t.belongs_to :usuario
    end
  end
end
