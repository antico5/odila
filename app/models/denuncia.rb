class Denuncia < ApplicationRecord
  has_many :item_denuncias, inverse_of: :denuncia, dependent: :destroy

  belongs_to :delito, inverse_of: :denuncias
  belongs_to :pais, inverse_of: :denuncias

  accepts_nested_attributes_for :item_denuncias

  def self.cantidad_por_pais
    group(:pais).order(count: 'desc').count
  end

  def legislacion
    Legislacion.find_by delito_id: delito_id, pais_id: pais_id
  end

end
