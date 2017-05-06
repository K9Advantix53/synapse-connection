Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'projects#index'

  resources :projects

  get '/profile', to: 'users#profile'

  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end

  namespace :api do
    namespace :v1 do
      resources :assignments
    end
  end
end
