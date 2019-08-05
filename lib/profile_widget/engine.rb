module ProfileWidget
  class Engine < ::Rails::Engine
    isolate_namespace ProfileWidget

    config.to_prepare do
      ::ApplicationRecord.include(ProfileWidget::HasProfile)
    end

    initializer :assets do |config|
      Rails.application.config.assets.paths << root.join("app", "assets", "javascripts", "profile_widget")
    end

  end
end
