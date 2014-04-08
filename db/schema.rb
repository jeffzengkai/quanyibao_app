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

ActiveRecord::Schema.define(version: 20140331034208) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "administrators", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "department",             default: "", null: false
    t.string   "mobile",                 default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "administrators", ["confirmation_token"], name: "index_administrators_on_confirmation_token", unique: true, using: :btree
  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true, using: :btree
  add_index "administrators", ["name"], name: "index_administrators_on_name", using: :btree
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true, using: :btree
  add_index "administrators", ["unlock_token"], name: "index_administrators_on_unlock_token", unique: true, using: :btree

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "right_id"
    t.string   "identity",       default: "", null: false
    t.integer  "status",         default: 0,  null: false
    t.integer  "unit_price",     default: 0,  null: false
    t.integer  "total_price",    default: 0,  null: false
    t.integer  "purchase_count", default: 0,  null: false
    t.integer  "purchase_time",  default: 0,  null: false
    t.string   "address",        default: "", null: false
    t.string   "mobile",         default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["identity"], name: "index_orders_on_identity", unique: true, using: :btree

  create_table "projects", force: true do |t|
    t.integer  "publisher_id"
    t.integer  "administrator_id"
    t.string   "name",             default: "", null: false
    t.string   "purpose",          default: "", null: false
    t.integer  "target_fund",      default: 0,  null: false
    t.integer  "current_fund",     default: 0,  null: false
    t.integer  "start_time",       default: 0,  null: false
    t.integer  "end_time",         default: 0,  null: false
    t.integer  "status",           default: 0,  null: false
    t.string   "province",         default: "", null: false
    t.string   "county",           default: "", null: false
    t.string   "detail_address",   default: "", null: false
    t.string   "post_code",        default: "", null: false
    t.string   "service_area",     default: "", null: false
    t.text     "detail"
    t.text     "pictures"
    t.integer  "purchase_num",     default: 0,  null: false
    t.integer  "follow_num",       default: 0,  null: false
    t.integer  "scan_num",         default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["name"], name: "index_projects_on_name", unique: true, using: :btree

  create_table "publishers", force: true do |t|
    t.string   "brand_name",   default: "", null: false
    t.string   "brand_logo",   default: "", null: false
    t.text     "description"
    t.string   "company_name", default: "", null: false
    t.string   "owner_name",   default: "", null: false
    t.string   "contacts",     default: "", null: false
    t.string   "contacts_tel", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publishers", ["brand_name"], name: "index_publishers_on_brand_name", unique: true, using: :btree

  create_table "rights", force: true do |t|
    t.integer  "project_id"
    t.string   "name",          default: "", null: false
    t.text     "definition"
    t.integer  "price",         default: 0,  null: false
    t.integer  "target_num",    default: 0,  null: false
    t.integer  "current_num",   default: 0,  null: false
    t.integer  "delivery_time", default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rights", ["name"], name: "index_rights_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "nickname",               default: "", null: false
    t.string   "mobile",                 default: "", null: false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["nickname"], name: "index_users_on_nickname", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "users_projects", force: true do |t|
    t.integer "user_id"
    t.integer "project_id"
  end

end
