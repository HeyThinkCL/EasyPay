class CreateOcps < ActiveRecord::Migration[5.0]
  def change
    create_table :ocps do |t|
      t.belongs_to :comercio, index:true
      t.belongs_to :orden, index:true
      t.belongs_to :producto
      t.timestamps
    end
  end
end
