Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  
  get "/articles", to: "sessions#views"
end
