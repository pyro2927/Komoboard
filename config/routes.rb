Komoboard::Application.routes.draw do
  resources :dashboards

  get "dashboards/show"
  get "dashboards/index"

  authenticated :user do
    root :to => 'dashboards#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index] do
    resources :dashboards
  end
end
