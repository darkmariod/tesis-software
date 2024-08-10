class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :nombre
      t.text :descripcion
      t.string :tipo
      t.string :imagen

      t.timestamps
    end
  end
end
