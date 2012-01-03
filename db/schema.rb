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

ActiveRecord::Schema.define(:version => 20111230164637) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "add_line"
    t.text     "description"
    t.string   "state_add"
    t.integer  "zip_add"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "pay_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_lists", :force => true do |t|
    t.integer  "area_code"
    t.integer  "phone_num"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",       :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "testprofile2s", :force => true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "line_add"
    t.string   "state_add"
    t.integer  "zip_add"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "city_add"
  end

  create_table "testprofiles", :force => true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "line_add"
    t.string   "state_add"
    t.integer  "zip_add"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "violation_lines", :force => true do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.integer  "violationtype_id"
    t.integer  "violationlog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "violation_logs", :force => true do |t|
    t.text     "comments"
    t.string   "contact_name"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "violation_line_id"
  end

  create_table "violation_types", :force => true do |t|
    t.text     "description"
    t.string   "name"
    t.boolean  "is_referable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end