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

ActiveRecord::Schema.define(version: 2020_10_23_152820) do

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

  create_table "daily_entries", force: :cascade do |t|
    t.string "temperature_ini"
    t.string "temperature_fin"
    t.string "respiratory_symptom"
    t.string "contact_with_infected"
    t.datetime "start_day"
    t.datetime "final_day"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_sick", default: false
    t.boolean "is_in_contact", default: false
    t.index ["admin_id"], name: "index_daily_entries_on_admin_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 40
    t.datetime "created_at"
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", unique: true
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "lines_articles", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.text "content"
    t.boolean "published", default: false
    t.datetime "published_at"
    t.string "hero_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "gplus_url"
    t.boolean "featured", default: false
    t.string "document"
    t.string "short_hero_image"
    t.text "teaser"
    t.index ["slug"], name: "index_lines_articles_on_slug", unique: true
  end

  create_table "lines_authorables", force: :cascade do |t|
    t.integer "author_id"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_lines_authorables_on_article_id"
    t.index ["author_id"], name: "index_lines_authorables_on_author_id"
  end

  create_table "lines_authors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "gplus_profile"
  end

  create_table "lines_pictures", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_lines_pictures_on_article_id"
  end

  create_table "lines_users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_digest"
    t.datetime "reset_sent_at"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
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
