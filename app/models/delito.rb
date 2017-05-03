class Delito < ApplicationRecord
  has_many :legislaciones
  has_many :denuncias

  def to_label
    texto
  end
end
