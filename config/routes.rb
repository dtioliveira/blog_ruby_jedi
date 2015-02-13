Rails.application.routes.draw do
  
  devise_for :admins

  get "/about", to: "pages#about"
  
  resources :posts

  root 'posts#index'
end
