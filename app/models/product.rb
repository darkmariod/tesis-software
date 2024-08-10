class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :imagen

  validates :codigo, :nombre, :descripcion, :color, :precio, :cantidad, :cantidad_minima, presence: true
end