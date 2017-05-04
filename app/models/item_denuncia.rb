class ItemDenuncia < ApplicationRecord
  belongs_to :pregunta
  belongs_to :opcion, required: false
  belongs_to :denuncia, inverse_of: :item_denuncias

  serialize :opciones_multiples, Array
end
