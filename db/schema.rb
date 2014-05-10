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

ActiveRecord::Schema.define(version: 20140510045524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alergies", force: true do |t|
    t.string   "alergy_name"
    t.date     "start_date"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "mid_initial"
    t.string   "last_name"
    t.date     "bod"
    t.string   "sex"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "mob_phone"
    t.string   "phone"
    t.string   "picture"
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
    t.string   "pais"
    t.string   "seo_url"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "doctors", force: true do |t|
    t.string   "doctor_fname"
    t.string   "doctor_specialty"
    t.string   "doctor_phone"
    t.string   "doctor_email"
    t.string   "doctor_address"
    t.string   "doctor_city"
    t.string   "doctor_state"
    t.string   "doctor_country"
    t.string   "doctor_zip"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "doctor_lname"
  end

  create_table "emergency_contacts", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "contact_phone"
    t.string   "contact_mob_phone"
    t.string   "contact_email"
    t.string   "contact_address"
    t.string   "contact_city"
    t.string   "contact_state"
    t.string   "contact_country"
    t.string   "contact_zip"
    t.string   "contact_relationship"
    t.string   "contact_photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
  end

  create_table "med_profiles", force: true do |t|
    t.string   "condition"
    t.date     "start_date"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meds", force: true do |t|
    t.string   "med_name"
    t.string   "dosage"
    t.string   "amount"
    t.date     "start_date"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
