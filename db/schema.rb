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

ActiveRecord::Schema.define(version: 20161208172847) do

  create_table "contact_details", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "contact_no"
    t.string   "contact_location"
    t.text     "address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "educational_details", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "basic_qualification"
    t.integer  "year_of_passing_BQ"
    t.float    "percentage_BQ"
    t.string   "university_BQ"
    t.string   "post_graduation"
    t.float    "percentage"
    t.integer  "year_of_passing"
    t.string   "university"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "employers", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "doreg"
    t.string   "ename"
    t.integer  "eno"
    t.string   "comapnyname"
    t.integer  "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jobseekars", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "dob"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professional_infos", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "total_exp"
    t.float    "annual_salary"
    t.string   "functional_area"
    t.string   "company_name"
    t.string   "key_skills"
    t.string   "resume_title"
    t.text     "text_resume"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
