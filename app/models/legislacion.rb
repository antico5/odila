class Legislacion < ApplicationRecord
  belongs_to :pais
  belongs_to :delito
end
