class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :nombre_cliente
      t.string :codigo_cliente
      t.string :ruc
      t.string :direccion
      t.string :telefono
      t.string :email
      t.date :fecha_falla_del_equipo
      t.string :tecnico_a_cargo
      t.time :hora_de_inicio
      t.time :hora_final
      t.text :trabajo_realizado
      t.text :observaciones_del_tecnico
      t.string :firma_del_cliente

      t.timestamps
    end
  end
end
