class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :precio
      t.belongs_to :comercio
    end
  end
end
