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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111201203446) do

  create_table "comments", :force => true do |t|
    t.integer  "author"
    t.integer  "profile_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.boolean  "repick"
    t.boolean  "show_paid"
    t.boolean  "show_history"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matchups", :force => true do |t|
    t.integer  "home"
    t.integer  "away"
    t.integer  "week"
    t.integer  "winner"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "league_id"
    t.integer  "profile_id"
    t.integer  "num_of_picks"
    t.boolean  "paid"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "picks", :force => true do |t|
    t.integer  "profile_id"
    t.integer  "league_id"
    t.integer  "team_id"
    t.integer  "week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.integer  "favorite"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "city"
    t.string   "name"
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
