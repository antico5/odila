class Legislacion < ApplicationRecord
  belongs_to :pais, inverse_of: :legislaciones
  belongs_to :delito, inverse_of: :legislaciones

  validates :delito_id, uniqueness: { scope: :pais_id, message: 'Solo puede
    haber una legislacion para un delito y un pais en particular.' }
end
