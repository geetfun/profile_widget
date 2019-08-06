ProfileWidget::Engine.routes.draw do

  resource  :profile, path: "", controller: "profile", only: [:show, :update]
  resources :surveys, only: [:create]

  namespace :admin do
    root to: "home#index"
  end

end
