# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_30_053405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "doctor_name"
    t.bigint "doctor_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "drug_name"
    t.bigint "drug_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prescription_drugs", force: :cascade do |t|
    t.bigint "prescription_id", null: false
    t.bigint "drug_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity"
    t.string "note"
    t.integer "discount"
    t.index ["drug_id"], name: "index_prescription_drugs_on_drug_id"
    t.index ["prescription_id"], name: "index_prescription_drugs_on_prescription_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.date "prescription_date"
    t.bigint "doctor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
  end

  add_foreign_key "prescription_drugs", "drugs"
  add_foreign_key "prescription_drugs", "prescriptions"
  add_foreign_key "prescriptions", "doctors"
end
