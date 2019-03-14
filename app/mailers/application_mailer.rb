class ApplicationMailer < ActionMailer::Base
  default from: 'francois.nguyen2@gmail.com'
  layout 'mailer'

  def contact_form(message)
    @message = message
    @to = "francois.nguyen2@gmail.com"

    mail(to: @to, subject: "Nouveau message depuis mon portfololio") do |format|
      format.html
  end
end
