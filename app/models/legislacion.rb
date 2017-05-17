class Legislacion < ApplicationRecord
  belongs_to :pais
  belongs_to :delito

  validates :delito_id, uniqueness: { scope: :pais_id, message: 'Solo puede
    haber una legislacion para un delito y un pais en particular.' }
end
