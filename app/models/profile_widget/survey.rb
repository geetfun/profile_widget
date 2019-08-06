module ProfileWidget
  class Survey < ApplicationRecord

    store :answers

    belongs_to :profile_widget_profile, class_name: "ProfileWidget::Profile"

  end
end
