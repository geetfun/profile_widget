class CreateProfileWidgetResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_widget_responses do |t|
      t.references :profile_widget_profile, null: false, foreign_key: false
      t.text :answers

      t.timestamps
    end
    add_foreign_key :profile_widget_responses, :profile_widget_profiles, on_delete: :cascade
  end
end
