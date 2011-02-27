ClanLeopard::Application.routes.draw do
  resources :messages

  resources :forums do
    resources :topics, :controller => "ForumTopics" do
      resources :comments, :as => "posts"
    end
    resources :categories, :except => :index, :controller => "ForumCategories"
  end

  resources :users, :path => '/profiles'
  resources :servers, :entries do
    resources :comments
  end

  root :to => 'entries#index'

  devise_for :users
  
  themes_for_rails
end
