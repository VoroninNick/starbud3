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

ActiveRecord::Schema.define(version: 20131226102958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_article_images", force: true do |t|
    t.integer  "about_article_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt_image"
    t.string   "description_image"
    t.string   "title_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "about_articles", force: true do |t|
    t.text     "content"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "id_article_about_us"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "country"
    t.integer  "sub_catalog_id"
    t.string   "brand_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalog_brands", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "country"
    t.integer  "catalog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalog_collections", force: true do |t|
    t.string   "name"
    t.text     "descriptions"
    t.string   "actions_label"
    t.integer  "catalog_brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalog_products", force: true do |t|
    t.string   "name"
    t.text     "descriptions"
    t.integer  "catalog_brand_id"
    t.integer  "catalog_collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_variants_id"
  end

  create_table "collections", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "descriptions"
    t.integer  "actions_label_id"
    t.integer  "brand_id"
    t.string   "collection_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "create_catalogs", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "door_color_options", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt_image"
    t.string   "description_image"
    t.string   "title_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "door_variants_fulfillment_option_id"
  end

  create_table "door_variants_fulfillment_options", force: true do |t|
    t.string   "name"
    t.integer  "door_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt_image"
    t.string   "description_image"
    t.string   "title_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doors", force: true do |t|
    t.string   "name"
    t.text     "descriptions"
    t.integer  "action_id"
    t.integer  "collection_id"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "door_url"
  end

  create_table "dor_informations", force: true do |t|
    t.integer  "door_id"
    t.text     "specifications"
    t.text     "care"
    t.text     "environment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dor_variant_performances", force: true do |t|
    t.integer  "dor_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt_image"
    t.string   "description_image"
    t.string   "title_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "dors", force: true do |t|
    t.string   "name"
    t.text     "descriptions"
    t.integer  "action_id"
    t.integer  "collection_id"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interest_news", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "short_description"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_catalogs", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "main_catalogs_url"
    t.string   "main_catalog_url"
  end

  create_table "product_variant_colors", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "product_variant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_variants", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "catalog_product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "short_description"
    t.datetime "begin_promotion"
    t.datetime "end_promotion"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "short_description"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "sub_catalogs", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "main_catalog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sub_catalog_url"
  end

  create_table "test_products", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "useful_videos", force: true do |t|
    t.string   "title"
    t.string   "video_url"
    t.text     "descriptions"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "variants_colors", force: true do |t|
    t.integer  "dor_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt_image"
    t.string   "description_image"
    t.string   "title_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "dor_variant_performances_id"
  end

  create_table "video_on_main_pages", force: true do |t|
    t.string   "title"
    t.string   "video_url"
    t.text     "descriptions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
