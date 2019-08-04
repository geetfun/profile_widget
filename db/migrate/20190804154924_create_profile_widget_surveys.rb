class CreateProfileWidgetSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_widget_surveys do |t|
      t.boolean :active, default: false
      t.string  :title, null: false
      t.timestamps
    end
  end
end
