class WebAppMailer < ApplicationMailer
  def web_app_email(data,email,subject)
    @body=data
    mail(to: email, subject: subject)
  end
end
