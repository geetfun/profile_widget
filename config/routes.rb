ProfileWidget::Engine.routes.draw do

  resource :profile, path: "", controller: "profile", only: [:show, :update]

end
