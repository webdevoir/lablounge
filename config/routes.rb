Rails.application.routes.draw do
  get 'lash_consents/new'

  devise_for :user, controllers: { sessions: 'user/sessions' }

  as :user do
    get 'login', to: 'user/sessions#new'
  end

  namespace :admin do
    get '/dashboard', to: 'admin#dashboard'
    patch '/account_update', to: 'admin#update_admin_account'

    get 'about', to: 'about#index'
    get 'about/new', to: 'about#new'
    get 'about/:id', to: 'about#edit', as: :about_edit
    post 'about', to: 'about#create', as: :about_create
    put '/about/:id/update', to: 'about#update', as: :about_update

    get '/images', to: 'images#index'
    post '/images', to: 'images#create'
    delete '/image/:id/:index', to: 'images#destroy', as: :destroy_image

    resources :services do
      resources :service_items
    end
  end

  resources :lash_consents, only: [:new, :create, :show]

  post 'message', to: 'home#send_message'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end


  root 'home#homepage'
end
