class Pais < ApplicationRecord
  has_many :legislaciones, inverse_of: :pais
  has_many :denuncias, inverse_of: :pais
  has_many :centro_de_denuncias, inverse_of: :pais

  def to_label
    nombre
  end

  def to_s
    to_label
  end
end
