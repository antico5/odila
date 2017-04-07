class Delito < ApplicationRecord
  has_many :legislaciones
  has_many :denuncias

end
