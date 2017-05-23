class ApplicationMailer < ActionMailer::Base
  BCC = ENV['MAILER_BCC']
  default from: '"ODILA - Observatorio Delitos Informaticos Latinoamerica" <odila@odila.com>'
  layout 'mailer'
end
