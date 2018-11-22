Rails.application.routes.draw do
  resources :sent_emails
  root 'sent_emails#new'
  root 'sent_emails#show'

  get 'sent_emails/update_form', as: 'update_form'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
