class CreateOrdenes < ActiveRecord::Migration[5.0]
  def change
    create_table :ordenes do |t|
      t.float :monto
      t.date :fecha_autorizacion
      t.belongs_to :usuario
    end
  end
end
