Rails.application.routes.draw do
  devise_for :admin, controllers: { sessions: 'admin/sessions' }

  get '/admin', to: 'admin#dashboard'
  root 'home#homepage'
end
