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

ActiveRecord::Schema.define(version: 20170419201647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "location"
    t.integer  "communication"
    t.integer  "payment"
    t.integer  "overall"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "request_id"
    t.integer  "rating_user_id"
    t.text     "report"
  end

  create_table "requests", force: :cascade do |t|
    t.boolean  "poster_rating",    default: false
    t.boolean  "acceptor_rating",  default: false
    t.string   "poster_name"
    t.string   "acceptor_name"
    t.text     "food_description"
    t.float    "price"
    t.datetime "start_time"
    t.string   "location"
    t.string   "exchange_method"
    t.text     "special_request"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
    t.integer  "user_other_id"
    t.datetime "end_time"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phone_number"
    t.string   "grade"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "notification_method",    default: [],              array: true
    t.string   "notification_time",      default: [],              array: true
    t.string   "location_preference",    default: [],              array: true
    t.float    "accum_poster_rating"
    t.float    "accum_acceptor_rating"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
