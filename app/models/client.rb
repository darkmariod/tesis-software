class Client < ApplicationRecord
    has_one_attached :firma_del_cliente
  
    # Validaciones (opcional)
    validates :nombre_cliente, :codigo_cliente, :ruc, :direccion, :telefono, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
  