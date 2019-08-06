class AddSurveyReferencesToProfileWidgetResponses < ActiveRecord::Migration[6.0]
  def change
    add_reference :profile_widget_responses, :profile_widget_survey, foreign_key: false
    add_foreign_key :profile_widget_responses, :profile_widget_surveys, on_delete: :cascade
  end
end
