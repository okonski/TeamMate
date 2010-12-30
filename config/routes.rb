ClanLeopard::Application.routes.draw do
  resources :servers

  resources :entries do
    resources :comments, :except => [:new]
  end

  root :to => 'home#index'

  devise_for :users
  
  themes_for_rails
end
