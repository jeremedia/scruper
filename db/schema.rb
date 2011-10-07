# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20111007214244) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "camera_rolls", :force => true do |t|
    t.string   "name"
    t.integer  "production_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crew_members", :force => true do |t|
    t.integer  "person_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productions", :force => true do |t|
    t.string   "title"
    t.integer  "total_days"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scenes", :force => true do |t|
    t.string   "number"
    t.integer  "script_id"
    t.integer  "storyboard_cell_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screengrabs", :force => true do |t|
    t.string   "file"
    t.integer  "take_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scripts", :force => true do |t|
    t.string   "file"
    t.string   "title"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shooting_days", :force => true do |t|
    t.integer  "shoot_id"
    t.date     "shoot_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoots", :force => true do |t|
    t.integer  "production_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sound_rolls", :force => true do |t|
    t.string   "name"
    t.integer  "production_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storyboard_cells", :force => true do |t|
    t.integer  "storyboard_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storyboards", :force => true do |t|
    t.integer  "production_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "takes", :force => true do |t|
    t.integer  "scene_id"
    t.text     "action"
    t.string   "lens"
    t.integer  "camera_roll_id"
    t.integer  "sound_roll_id"
    t.integer  "position"
    t.integer  "time"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
