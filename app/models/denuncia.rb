class Denuncia < ApplicationRecord
  belongs_to :delito
  belongs_to :pais
end
