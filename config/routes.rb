ClanLeopard::Application.routes.draw do
  resources :entries

  root :to => 'home#index'

  devise_for :users
  
  themes_for_rails
end
