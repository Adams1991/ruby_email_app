class WebAppMailer < ApplicationMailer
  def mail_method(data,email,subject)
    @body=data
    mail(to: email, subject: subject)
  end
end
