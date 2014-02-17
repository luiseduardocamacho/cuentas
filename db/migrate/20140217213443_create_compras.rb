class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.string :seudonimo
      t.string :nombre
      t.string :apellido
      t.integer :age
      t.integer :order_id
      t.datetime :fecha
      t.integer :precio
      t.string :publicacion
      t.string :email

      t.timestamps
    end
  end
end
