require 'rails_helper'

describe ConsultasController do
  describe 'POST create' do
    it 'creates a consulta' do
      post :create, params: { consulta: { nombre: 'Armando', email: 'test@test.com', consulta: 'Test' } }
      expect(response).to redirect_to(exito_consultas_path)
    end
  end
end
