ClanLeopard::Application.routes.draw do
  resources :messages

  namespace :forum do
    resources :topics do
      resources :comments
    end
    resources :forums, :path => '/'   do
      resources :categories
    end
  end

  resources :users, :path => '/profiles'

  resources :servers, :entries do
    resources :comments
  end

  root :to => 'entries#index'

  devise_for :users
  
  themes_for_rails
end
