ClanLeopard::Application.routes.draw do
  namespace :forum do resources :topics end

  namespace :forum do resources :categories end

  resources :users, :path => '/profiles'

  resources :servers, :entries do
    resources :comments
  end

  root :to => 'home#index'

  devise_for :users
  
  themes_for_rails
end
