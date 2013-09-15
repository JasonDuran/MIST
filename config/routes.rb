MIST::Application.routes.draw do
  resources :messages
  resources :standards


  get "welcome/index"

  root to: "welcome#index"

end
