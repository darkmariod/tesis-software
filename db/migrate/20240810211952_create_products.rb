class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :codigo
      t.string :nombre
      t.text :descripcion
      t.string :color
      t.decimal :precio
      t.integer :cantidad
      t.integer :cantidad_minima
      t.string :imagen
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
