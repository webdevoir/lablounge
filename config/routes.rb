Rails.application.routes.draw do
  devise_for :admin, controllers: { sessions: 'admin/sessions' }

  get '/admin', to: 'admin#dashboard'
  get '/admin/about/:id', to: 'admin#about_edit', as: :about_edit
  put '/admin/about/:id/update', to: 'admin#about_update', as: :about_update

  root 'home#homepage'
end
