class CreateProfileWidgetProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_widget_profiles do |t|
      t.references :ownerable, polymorphic: true, null: false, index: { name: "index_profiles_on_ownerable" }
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
