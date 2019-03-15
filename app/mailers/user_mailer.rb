class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_form.subject
  #
  def contact_form(message)
    @message = message
    @me = "francois.nguyen2@gmail.com"
    mail(to: @me, subject: "Nouveau message depuis mon portfolio")
  end
end
