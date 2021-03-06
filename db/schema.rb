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

ActiveRecord::Schema.define(version: 20131021154535) do

  create_table "counteroffers", force: true do |t|
    t.integer  "offer_id"
    t.string   "buyer"
    t.string   "seller"
    t.string   "buyer_price"
    t.string   "seller_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "counteroffers", ["offer_id"], name: "index_counteroffers_on_offer_id"

  create_table "messages", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "recipient_id"
    t.integer  "sender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offerlists", force: true do |t|
    t.string   "buyer"
    t.decimal  "price"
    t.datetime "date"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offerlists", ["product_id"], name: "index_offerlists_on_product_id"

  create_table "offers", force: true do |t|
    t.integer  "product_id"
    t.string   "buyer"
    t.string   "seller"
    t.decimal  "buyer_price"
    t.decimal  "seller_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offers", ["product_id"], name: "index_offers_on_product_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.boolean  "sold"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
