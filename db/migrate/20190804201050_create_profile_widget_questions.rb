class CreateProfileWidgetQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_widget_questions do |t|
      t.references :profile_widget_survey, null: false, foreign_key: false
      t.string :title, null: false

      t.timestamps
    end
    add_foreign_key :profile_widget_questions, :profile_widget_surveys, on_delete: :cascade
  end
end
