class DenunciaMailer < ApplicationMailer
  def resultado denuncia_id
    @denuncia = Denuncia.find denuncia_id
    if @denuncia.email
      mail to: @denuncia.email, subject: 'Respuesta de ODILA', bcc: BCC
    end
  end
end
