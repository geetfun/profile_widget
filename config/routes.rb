ProfileWidget::Engine.routes.draw do

  resource :profile, controller: "profile", only: [:show, :update]

end
