class SentEmailsController < ApplicationController
  def new
    @email_template = EmailTemplate.all
  end

  def create
       body = params[:message_preview]
       subject =params[:subject]
       recipient_name = params[:name]
       recipient_email = params[:email]
       SentEmail.create(recipient_name: recipient_name, recipient_email: recipient_email, subject: subject, body: body )
  end

end
