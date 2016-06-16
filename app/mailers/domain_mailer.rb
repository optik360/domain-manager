class DomainMailer < ApplicationMailer
  default from: ENV['MAIL_FROM_ADDRESS']
  layout "mailer"

  def expire_soon(domains)
    @domains = domains
    mail(to: ENV['SUPERVISOR_EMAIL_ADDRESS'],subject: "Domaine expire bientot")
  end
end