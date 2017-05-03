class ItemDenuncia < ApplicationRecord
  belongs_to :pregunta
  belongs_to :opcion
  belongs_to :denuncia, inverse_of: :item_denuncias
end
