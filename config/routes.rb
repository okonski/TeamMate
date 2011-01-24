ClanLeopard::Application.routes.draw do
  namespace :forum do
    resources :categories do
      resources :topics
    end    
  end

  resources :users, :path => '/profiles'

  resources :servers, :entries do
    resources :comments
  end

  root :to => 'home#index'

  devise_for :users
  
  themes_for_rails
end
