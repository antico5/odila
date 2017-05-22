class Pregunta < ApplicationRecord
  enum tipo: { 'radio' => 1,
            'checkbox' => 2,
            'fecha' => 3,
            'email' => 4,
            'selectbox' => 5 }

  has_many :opciones, inverse_of: :pregunta, dependent: :destroy
  has_many :item_denuncias, inverse_of: :pregunta

  default_scope -> { includes(:opciones) }

  def opcion_simple?
    ['radio', 'selectbox'].include? tipo
  end

  def opcion_multiple?
    tipo == 'checkbox'
  end

  def texto?
    tipo == 'email'
  end

  def fecha?
    tipo == 'fecha'
  end

  def to_s
    texto
  end
end
