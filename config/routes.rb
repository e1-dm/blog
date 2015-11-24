Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root "posts#index"

  resources :posts do
    resources :comments, shallow: true
  end

end
