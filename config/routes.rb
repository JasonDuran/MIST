MIST::Application.routes.draw do
  resources :conceptual_entities


  resources :messages
  resources :standards


  get "welcome/index"

  root to: "welcome#index"

end
