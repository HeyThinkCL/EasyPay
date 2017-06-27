class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :email
      t.string :password_digest
      t.belongs_to :comercio
    end
    add_index :usuarios, :email, unique: true
  end
end
