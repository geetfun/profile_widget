class CreateProfileWidgetSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_widget_surveys do |t|
      t.string :key
      t.text :responses
      t.references :profile_widget_profile, null: false, foreign_key: false

      t.timestamps
    end
    add_foreign_key :profile_widget_surveys, :profile_widget_profiles, on_delete: :cascade
  end
end
