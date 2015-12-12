Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations', omniauth_callbacks: "users/omniauth_callbacks" }
  root "posts#index"

  #get '/users/:id' => 'users#show', as: 'user'
  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_omniauth_user_session
  end

  resources :users

  resources :posts do
    resources :comments, shallow: true
  end

end
