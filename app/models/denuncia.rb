class Denuncia < ApplicationRecord
  has_many :item_denuncias, inverse_of: :denuncia

  belongs_to :delito
  belongs_to :pais

  accepts_nested_attributes_for :item_denuncias
end
