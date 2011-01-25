ClanLeopard::Application.routes.draw do
  namespace :forum do
    resources :topics do
      resources :comments
    end
    
    resources :categories, :path => '/'  
  end

  resources :users, :path => '/profiles'

  resources :servers, :entries do
    resources :comments
  end

  root :to => 'home#index'

  devise_for :users
  
  themes_for_rails
end
