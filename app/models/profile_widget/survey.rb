module ProfileWidget
  class Survey < ApplicationRecord

    ##
    # Associations

    has_many :questions, -> { order(created_at: :desc) }, class_name: "ProfileWidget::Question", foreign_key: "profile_widget_survey_id"

    ##
    # Nested attributes

    accepts_nested_attributes_for :questions, reject_if: proc { |attributes| attributes['title'].blank? }, allow_destroy: true

  end
end
