class DomainMailer < ApplicationMailer
  default from: "gestion.server@optik.com"
  layout "mailer"
 
  def expire_soon(domains)
    @domains = domains
    mail(to:"patrickk.vvigneault@gmail.com",subject:"domaine expire bientot")
  end
end