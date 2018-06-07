Rails.application.routes.draw do
  devise_for :user, controllers: { sessions: 'user/sessions' }

  namespace :admin do
    get '/', to: 'admin#dashboard'

    get 'about', to: 'about#index'
    get 'about/new', to: 'about#new'
    get 'about/:id', to: 'about#edit', as: :about_edit
    post 'about', to: 'about#create', as: :about_create
    put '/about/:id/update', to: 'about#update', as: :about_update

    get '/images', to: 'images#index'
    post '/images', to: 'images#create'
    delete '/image/:id/:index', to: 'images#destroy', as: :destroy_image
  end


  root 'home#homepage'
end
