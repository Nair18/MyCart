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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160112075909) do

  create_table "carts", force: true do |t|
    t.string   "name"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.decimal  "price"
    t.integer  "quantity"
    t.datetime "ship_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "payment_id"
    t.datetime "order_date"
    t.datetime "ship_date"
    t.datetime "required_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "payment_id"
    t.string   "payment_type"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
=======
     t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> 19864e1fd06881fbf14c902ca783c51388630b12
    t.string   "user_name"
    t.string   "email"
    t.integer  "phone"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "card_no"
    t.integer  "cvc"
    t.integer  "user_id"
<<<<<<< HEAD
    t.integer  "order_id"
=======
    t.integer  "order_id" 
   
   
>>>>>>> 19864e1fd06881fbf14c902ca783c51388630b12
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.integer  "Item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "supplier_id"
  end

  create_table "pros", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "company_name"
    t.string   "contact_fname"
    t.string   "contact_lname"
    t.text     "address_1"
    t.text     "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "phone_no"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
