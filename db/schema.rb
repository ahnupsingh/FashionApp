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

ActiveRecord::Schema.define(version: 2019_02_18_071256) do

  create_table "bills", force: :cascade do |t|
    t.integer "bill_no"
    t.integer "total"
    t.integer "advance"
    t.integer "grand_total"
    t.boolean "is_complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "emp_type"
    t.string "address"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "particulars", force: :cascade do |t|
    t.string "name"
    t.integer "cus_rate"
    t.integer "emp_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bill_id"
    t.integer "quantity"
  end

  create_table "tasks", force: :cascade do |t|
    t.date "date"
    t.integer "bill_no"
    t.string "task_particular"
    t.integer "quantity"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
