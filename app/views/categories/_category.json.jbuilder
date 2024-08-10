json.extract! category, :id, :nombre, :descripcion, :tipo, :imagen, :created_at, :updated_at
json.url category_url(category, format: :json)
