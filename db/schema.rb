# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< cc6e509c4ccecb4ae017e79b812eae3587e4e903
<<<<<<< 5055e40196e24281ae698fe5c9090c6d38f67fcf
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180310124153) do

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "style_id"
    t.integer "user_id"
    t.string "custom_style"
    t.string "description"
    t.string "process_desc"
    t.string "visibility_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["style_id"], name: "index_recipes_on_style_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
=======
ActiveRecord::Schema.define(version: 20180310134810) do
=======
ActiveRecord::Schema.define(version: 20180311143537) do
>>>>>>> Adds table Recipes
=======
<<<<<<< Updated upstream
ActiveRecord::Schema.define(version: 20180311143537) do
=======
ActiveRecord::Schema.define(version: 20180310162056) do
>>>>>>> Stashed changes
>>>>>>> Adds additional tables + migration

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "user_id"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ingredients_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "style_id"
    t.integer "user_id"
    t.string "custom_style"
    t.string "description"
    t.string "process_desc"
    t.string "visibility_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["style_id"], name: "index_recipes_on_style_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
<<<<<<< Updated upstream
=======
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.string "description"
>>>>>>> Stashed changes
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
>>>>>>> a777d4ba6806310169ecbb47c24edca33db39bab
  end

end
