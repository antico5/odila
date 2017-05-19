class Delito < ApplicationRecord
  has_many :legislaciones, inverse_of: :delito
  has_many :denuncias, inverse_of: :delito

  def to_label
    nombre
  end

  def to_s
    to_label
  end
end
