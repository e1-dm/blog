Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root "posts#index"

  #get '/users/:id' => 'users#show', as: 'user'

  resources :users

  resources :posts do
    resources :comments, shallow: true
  end

end
