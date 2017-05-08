require 'rails_helper'

RSpec.describe Consulta, type: :model do
  it 'can be created' do
    consulta = Consulta.create nombre: 'Armando', email: 'armando.andini@gmail.com',
      consulta: 'Test'
    expect(consulta.save).to be_truthy
  end
end
