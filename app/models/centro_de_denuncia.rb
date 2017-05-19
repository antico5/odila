class CentroDeDenuncia < ApplicationRecord
  belongs_to :pais, inverse_of: :centro_de_denuncias

  default_scope -> { order(:orden) }
end
