Rails.application.routes.draw do
  resources :world_needs
  resources :good_ats
  resources :loves
  resources :worksheets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
