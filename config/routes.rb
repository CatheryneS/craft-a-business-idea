Rails.application.routes.draw do
  get '/api/login', to: "sessions#create"

  namespace :api do 
    namespace :v1 do
      resources :world_needs
      resources :good_ats
      resources :loves
      resources :worksheets
      resources :users
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
