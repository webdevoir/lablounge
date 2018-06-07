Rails.application.routes.draw do
  devise_for :user, controllers: { sessions: 'user/sessions' }

  

  namespace :admin do
    get '/', to: 'admin#dashboard'
    get '/admin/about/:id', to: 'admin#about_edit', as: :about_edit
    put '/admin/about/:id/update', to: 'admin#about_update', as: :about_update

    get '/images', to: 'images#index'
    post '/images', to: 'images#create'
    delete '/image/:id/:index', to: 'images#destroy', as: :destroy_image
  end


  root 'home#homepage'
end
