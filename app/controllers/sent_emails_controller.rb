class SentEmailsController < ApplicationController
  def new
    @email_templates = EmailTemplate.all
    @selected_template = EmailTemplate.find_by("id = ?", @email_templates.first.id)
  end

  def show
    @selected_template = EmailTemplate.find_by("id = ?", params[:email_template_id])
    @email_templates = EmailTemplate.all
  end

  def update_form
      @selected_template = EmailTemplate.find_by("template_id = ?", params[:email_template_id])
      respond_to do |format|
        format.js
      end
  end


  def create
      # byebug
       sent_email_hash = params[:sent_email]

       body = sent_email_hash[:message_preview]
       subject = sent_email_hash[:subject]
       recipient_name = sent_email_hash[:name]
       recipient_email = sent_email_hash[:email]
       
       email = WebAppMailer.web_app_email(body, recipient_email, subject)
       email.deliver_now
       SentEmail.create(recipient_name: recipient_name, recipient_email: recipient_email, subject: subject, body: body )
  end

end
