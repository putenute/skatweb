Skatweb::Application.routes.draw do
  get "static_pages/home"

  get "static_pages/help"

  resources :scores

  resources :users

  match '/help',    to: 'static_pages#help'
  match '/',    to: 'static_pages#home'
  root :to => 'static_pages#help'
  
  match '/signup',  to: 'users#new'

  

end
