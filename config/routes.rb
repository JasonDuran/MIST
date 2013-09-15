MIST::Application.routes.draw do
  resources :standards


  get "welcome/index"

  root to: "welcome#index"

end
