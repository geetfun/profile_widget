class CleanUpSchema < ActiveRecord::Migration[6.0]
  def change
    drop_table "profile_widget_responses", if_exists: true, force: :cascade
    drop_table "profile_widget_surveys", if_exists: true, force: :cascade
    drop_table "profile_widget_questions", if_exists: true, force: :cascade
  end
end