class Delito < ApplicationRecord
  has_many :legislaciones
  has_many :denuncias

  def to_label
    nombre
  end

  def to_s
    to_label
  end
end
