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

ActiveRecord::Schema.define(:version => 20120911040616) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "directions", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "kinds", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "line_items", :force => true do |t|
    t.integer  "parameter_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "param_classes", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "parameter_details", :force => true do |t|
    t.string   "description",    :limit => 10000
    t.string   "unit",           :limit => 10000
    t.string   "source",         :limit => 10000
    t.string   "expression",     :limit => 10000
    t.integer  "param_class_id"
    t.integer  "kind_id"
    t.integer  "case_id"
    t.integer  "direction_id"
    t.integer  "parameter_id"
    t.integer  "scope0_id"
    t.integer  "scope1_id"
    t.integer  "scope2_id"
    t.integer  "scope3_id"
    t.float    "value"
    t.string   "value_s",        :limit => 1000
    t.string   "value_type"
    t.boolean  "basic"
    t.boolean  "scalar"
    t.string   "notation"
    t.string   "format"
    t.integer  "version",                         :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parameter_indices", :force => true do |t|
    t.integer "parameter_id"
    t.string  "search_text",  :limit => 100000
  end

  create_table "parameters", :force => true do |t|
    t.string   "name"
    t.integer  "parameter_detail_id"
    t.boolean  "protected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proposal_statuses", :force => true do |t|
    t.string "name"
  end

  create_table "proposals", :force => true do |t|
    t.string   "name"
    t.integer  "parameter_detail_id"
    t.boolean  "protected"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proposal_status_id"
  end

  create_table "scope0s", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "scope1s", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "scope2s", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "scope3s", :force => true do |t|
    t.string "name", :limit => 64
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
    t.boolean  "admin"
    t.string   "name"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
