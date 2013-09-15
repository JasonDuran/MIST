MIST::Application.routes.draw do
  resources :message_fields


  resources :conceptual_fields


  resources :conceptual_entities


  resources :messages
  resources :standards


  get "welcome/index"

  root to: "welcome#index"

end
