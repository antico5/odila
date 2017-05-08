class Consulta < ApplicationRecord
  validates_presence_of :nombre, :email, :consulta
end
