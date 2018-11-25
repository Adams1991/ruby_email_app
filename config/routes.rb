Rails.application.routes.draw do
  get 'sent_emails/new'
  get 'sent_emails/update_form', as: 'update_form'
  post 'sent_emails/create'

  root 'sent_emails#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
