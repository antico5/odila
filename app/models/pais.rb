class Pais < ApplicationRecord
  has_many :legislaciones
  has_many :denuncias
  has_many :centro_de_denuncias

  def to_label
    nombre
  end
end
