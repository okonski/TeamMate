ClanLeopard::Application.routes.draw do
  resources :servers, :entries do
    resources :comments, :except => [:new, :index, :show]
  end

  root :to => 'home#index'

  devise_for :users
  
  themes_for_rails
end
