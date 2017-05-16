class Denuncia < ApplicationRecord
  has_many :item_denuncias, inverse_of: :denuncia

  belongs_to :delito
  belongs_to :pais

  accepts_nested_attributes_for :item_denuncias

  def legislacion
    Legislacion.find_by delito_id: delito_id, pais_id: pais_id
  end
end
