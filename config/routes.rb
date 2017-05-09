Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'projects#home'

  resources :projects

  get '/profile', to: 'users#profile'

  get '/search', to: 'projects#search'

  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end

  namespace :api do
    namespace :v1 do
      resources :searches
    end
  end




  namespace :api do
    namespace :v1 do
      resources :assignments
    end
  end
end
