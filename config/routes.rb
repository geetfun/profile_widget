ProfileWidget::Engine.routes.draw do

  resource :profile, path: "", controller: "profile", only: [:show, :update]

  namespace :admin do
    resources :surveys do
      collection do
        get "active"
        get "inactive"
      end
    end
    root to: "home#index"
  end

end
