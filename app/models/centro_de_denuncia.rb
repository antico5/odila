class CentroDeDenuncia < ApplicationRecord
  belongs_to :pais

  default_scope -> { order(:orden) }
end
