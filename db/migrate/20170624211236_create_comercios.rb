class CreateComercios < ActiveRecord::Migration[5.0]
  def change
    create_table :comercios do |t|
      t.string :nombre
      t.string :codigo
    end
  end
end
