class Opcion < ApplicationRecord
  belongs_to :pregunta

  def to_label
    texto
  end
end
