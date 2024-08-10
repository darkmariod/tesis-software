json.extract! product, :id, :codigo, :nombre, :descripcion, :color, :precio, :cantidad, :cantidad_minima, :imagen, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
