Rails.application.routes.draw do
 
  resources :topics, only: [:index, :show]
  
  devise_for :users, path: "", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: "register"}
  resources :portfolios, except: [:show]
  get 'ruby-items', to: 'portfolios#ruby'
  get '/portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get '/about-me', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  
  resources :blogs

  mount ActionCable.server => '/cable'
  
  
  root to: 'pages#home'


end
