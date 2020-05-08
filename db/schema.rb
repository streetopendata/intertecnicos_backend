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

ActiveRecord::Schema.define(version: 2020_05_05_230425) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "worker_attributes", force: :cascade do |t|
    t.string "nom_com"
    t.string "sede"
    t.string "tip_doc"
    t.string "tel_con"
    t.string "sexo"
    t.string "address"
    t.string "localidad"
    t.string "zone"
    t.boolean "bicicleta"
    t.boolean "automovil"
    t.boolean "moto"
    t.boolean "taxi"
    t.boolean "walk"
    t.integer "n_peo_worker"
    t.integer "n_peo_old"
    t.integer "n_peo_young"
    t.boolean "dis_diabetes"
    t.boolean "dis_cardio"
    t.boolean "dis_hypertension"
    t.boolean "dis_acv"
    t.boolean "dis_inmunosuopressant"
    t.boolean "dis_obs_cronic"
    t.boolean "dis_malnutrition"
    t.boolean "dis_smoker"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_worker_attributes_on_admin_id"
  end

end
