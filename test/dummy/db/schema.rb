# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_05_184804) do

  create_table "profile_widget_profiles", force: :cascade do |t|
    t.string "ownerable_type", null: false
    t.integer "ownerable_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ownerable_type", "ownerable_id"], name: "index_profiles_on_ownerable"
  end

  create_table "profile_widget_surveys", force: :cascade do |t|
    t.string "key"
    t.text "responses"
    t.integer "profile_widget_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_widget_profile_id"], name: "index_profile_widget_surveys_on_profile_widget_profile_id"
  end

  add_foreign_key "profile_widget_surveys", "profile_widget_profiles", on_delete: :cascade
end
