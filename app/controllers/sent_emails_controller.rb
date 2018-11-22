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
       body = params[:message_preview]
       subject =params[:subject]
       recipient_name = params[:name]
       recipient_email = params[:email]
       email = WebAppMailer.web_app_email(body, recipient_email, subject)
       SentEmail.create(recipient_name: recipient_name, recipient_email: recipient_email, subject: subject, body: body )
  end

end
