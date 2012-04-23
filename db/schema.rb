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

ActiveRecord::Schema.define(:version => 20120112234721) do

  create_table "additional_services", :force => true do |t|
    t.boolean  "learn_how_to_sue"
    t.boolean  "learn_how_to_reduce"
    t.boolean  "lower_mortgage"
    t.boolean  "correct_mistakes"
    t.boolean  "hire_lawyer"
    t.integer  "intake_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "add_line"
    t.text     "description"
    t.string   "state_add"
    t.integer  "zip_add"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intake_forms", :force => true do |t|
    t.boolean  "sued"
    t.boolean  "garnashed"
    t.string   "name_of_collector"
    t.decimal  "how_much_debt_price", :precision => 10, :scale => 2
    t.decimal  "total_debt",          :precision => 10, :scale => 2
    t.decimal  "max_amount_afford",   :precision => 10, :scale => 2
    t.boolean  "judgements"
    t.boolean  "law_suit_inv_real"
    t.boolean  "law_suit_inv_cc"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intake_questions", :force => true do |t|
    t.boolean  "live_in_count"
    t.boolean  "sign_contract"
    t.boolean  "contacting_other"
    t.boolean  "recieved_collection_letters"
    t.boolean  "harrasing_abusing"
    t.boolean  "false_misleading"
    t.boolean  "unfair_methods"
    t.boolean  "paid_money"
    t.boolean  "bank_acoount"
    t.integer  "intake_form_id"
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
    t.integer  "phone_number"
    t.string   "preferred_contact_tpye"
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

  create_table "violation_lines", :force => true do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.integer  "violation_type_id"
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

  create_table "violations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "violations2s", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
