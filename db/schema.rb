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

ActiveRecord::Schema.define(version: 20170905172300) do

  create_table "calendars", force: :cascade do |t|
    t.string "title"
    t.integer "room_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.decimal "hour_interval"
    t.decimal "hour_limit"
    t.string "color"
    t.boolean "public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "weekend"
    t.boolean "holiday"
  end

  create_table "categories_products", force: :cascade do |t|
    t.integer "mod_id"
    t.integer "plan_id"
  end

  create_table "category_events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "icon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_mods", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.string "icon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.integer "calendar_id"
    t.decimal "total_amount"
    t.datetime "start_at"
    t.decimal "duration"
    t.text "invites"
    t.text "description"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "icons", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mod_tours", force: :cascade do |t|
    t.string "title"
    t.integer "mod_id"
    t.string "picture"
    t.text "description"
    t.string "background"
    t.string "a_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mods", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.string "icon"
    t.string "slug"
    t.integer "category_mod_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "icon_id"
  end

  create_table "plan_mods", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "mod_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "month_price"
    t.integer "icon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "studio_id"
    t.string "picture"
    t.text "description"
    t.decimal "price_hour"
    t.decimal "price_weekend"
    t.decimal "price_late"
    t.integer "category_event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "social_name"
    t.string "email"
    t.text "description"
    t.integer "user_id"
    t.string "cep"
    t.string "address"
    t.string "city"
    t.string "uf"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "open_at"
    t.datetime "close_at"
    t.string "telephone"
    t.string "celphone"
    t.string "facebook"
    t.string "instagram"
    t.string "site"
    t.string "n"
    t.string "ngb"
    t.string "cnpj"
  end

  create_table "user_plan_months", force: :cascade do |t|
    t.integer "user_plan_id"
    t.integer "month"
    t.integer "year"
    t.integer "until_month_day"
    t.string "status"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_plans", force: :cascade do |t|
    t.integer "user_id"
    t.integer "plan_id"
    t.string "payment_type"
    t.float "value"
    t.integer "duration_months"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "cancelled_at"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "cep"
    t.string "cpf"
    t.boolean "admin"
    t.string "picture"
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
  end

end
