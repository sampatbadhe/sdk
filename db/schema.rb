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

ActiveRecord::Schema.define(version: 20160827134537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.integer  "member_id"
    t.text     "content"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id", using: :btree
    t.index ["member_id"], name: "index_comments_on_member_id", using: :btree
  end

  create_table "helpline_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "helplines", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "phone_number"
    t.integer  "mobile_number"
    t.integer  "helpline_category_id"
    t.integer  "region_id"
    t.string   "email_address"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["helpline_category_id"], name: "index_helplines_on_helpline_category_id", using: :btree
    t.index ["region_id"], name: "index_helplines_on_region_id", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.integer  "phone_number"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "society_id"
    t.boolean  "is_secretary"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["society_id"], name: "index_members_on_society_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "societies", force: :cascade do |t|
    t.integer  "registration_number"
    t.string   "name"
    t.string   "address"
    t.integer  "region_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "topics", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "society_id"
    t.string   "title"
    t.string   "description"
    t.integer  "status",      default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["member_id"], name: "index_topics_on_member_id", using: :btree
    t.index ["society_id"], name: "index_topics_on_society_id", using: :btree
    t.index ["status"], name: "index_topics_on_status", using: :btree
  end

  add_foreign_key "comments", "members"
  add_foreign_key "helplines", "helpline_categories"
  add_foreign_key "helplines", "regions"
  add_foreign_key "members", "societies"
  add_foreign_key "topics", "members"
  add_foreign_key "topics", "societies"
end
