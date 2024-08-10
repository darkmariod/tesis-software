json.extract! client, :id, :nombre_cliente, :codigo_cliente, :ruc, :direccion, :telefono, :email, :fecha_falla_del_equipo, :tecnico_a_cargo, :hora_de_inicio, :hora_final, :trabajo_realizado, :observaciones_del_tecnico, :firma_del_cliente, :created_at, :updated_at
json.url client_url(client, format: :json)
