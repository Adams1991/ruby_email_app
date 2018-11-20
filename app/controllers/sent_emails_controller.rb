class SentEmailsController < ApplicationController
  def new
    @email_template = EmailTemplate.all
  end

  def create

  end

end
