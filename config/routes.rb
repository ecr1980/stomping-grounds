Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', :registrations => "email_registrations" }

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'  
    delete 'sign_out' => 'devise/sessions#destroy'
  end
  get "profiles/show/:id" => "profiles#show", as: "user_show"
  put "profiles/" => "profiles#update"
  resources :users, :friendships, :sayings, :likes, :comments, :profiles, :photos, :home
  root "home#index"
  post "profiles/show/:id" => "profiles#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
