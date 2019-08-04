module ProfileWidget
  class Engine < ::Rails::Engine
    isolate_namespace ProfileWidget

    config.to_prepare do
      ::ApplicationRecord.include(ProfileWidget::HasProfile)
    end

  end
end
