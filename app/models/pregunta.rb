class Pregunta < ApplicationRecord
  enum tipo: { 'radio' => 1,
            'checkbox' => 2,
            'fecha' => 3,
            'email' => 4,
            'selectbox' => 5 }

  has_many :opciones
end
