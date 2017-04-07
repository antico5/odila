class CentroDeDenuncia < ApplicationRecord
  belongs_to :pais

  serialize :telefonos, Array
  serialize :fiscales, Array
end
