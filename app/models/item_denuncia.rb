class ItemDenuncia < ApplicationRecord
  belongs_to :pregunta, inverse_of: :item_denuncias
  belongs_to :opcion, required: false
  belongs_to :denuncia, inverse_of: :item_denuncias

  serialize :opciones_multiples, Array

  def respuesta
    case pregunta.tipo
    when 'radio' || 'selectbox'
      opcion.try :texto
    when 'checkbox'
      Opcion.find(opciones_multiples).map &:texto
    when 'fecha'
      fecha
    when 'email'
      observacion
    end
  end
end
