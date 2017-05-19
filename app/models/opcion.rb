class Opcion < ApplicationRecord
  belongs_to :pregunta, inverse_of: :opciones

  def to_label
    texto
  end
end
