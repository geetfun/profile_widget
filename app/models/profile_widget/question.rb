module ProfileWidget
  class Question < ApplicationRecord

    ##
    # Associations

    belongs_to :survey, class_name: "ProfileWidget::Survey", foreign_key: "profile_widget_survey_id"

    ##
    # Validations

    validates :title, presence: true

  end
end
