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

ActiveRecord::Schema.define(version: 20140704202600) do

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
    t.integer  "index_article"
  end

  create_table "article_abouts", force: true do |t|
    t.text     "main_article_about_us"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.text     "text_to_brand"
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

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

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

  create_table "color_baseboard_images", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "thumb_file_name"
    t.string   "thumb_content_type"
    t.integer  "thumb_file_size"
    t.datetime "thumb_updated_at"
    t.integer  "color_baseboard_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "color_baseboards", force: true do |t|
    t.string   "name"
    t.boolean  "public"
    t.integer  "index_sort"
    t.integer  "render_interior_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "color_wall_images", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "thumb_file_name"
    t.string   "thumb_content_type"
    t.integer  "thumb_file_size"
    t.datetime "thumb_updated_at"
    t.integer  "color_wall_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "color_walls", force: true do |t|
    t.string   "name"
    t.boolean  "public"
    t.integer  "index_sort"
    t.integer  "render_interior_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contanct_pages", force: true do |t|
    t.string   "address"
    t.string   "working_hours"
    t.string   "phones"
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
    t.text     "table"
    t.integer  "special_offer_id"
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

  create_table "exteriors", force: true do |t|
    t.string   "name"
    t.string   "code_product"
    t.string   "image_interior_file_name"
    t.string   "image_interior_content_type"
    t.integer  "image_interior_file_size"
    t.datetime "image_interior_updated_at"
    t.string   "image_structure_file_name"
    t.string   "image_structure_content_type"
    t.integer  "image_structure_file_size"
    t.datetime "image_structure_updated_at"
    t.integer  "action_id"
    t.integer  "collection_id"
    t.integer  "brand_id"
    t.integer  "sub_catalog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alt_inter"
    t.string   "title_inter"
    t.text     "desc_inter"
    t.string   "alt_struct"
    t.string   "title_struct"
    t.text     "desc_struct"
    t.string   "alt_per"
    t.string   "title_per"
    t.text     "desc_per"
    t.string   "exterior_url"
  end

  create_table "feedback_emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "floor_technical_data", force: true do |t|
    t.string   "name"
    t.integer  "floor_id"
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

  create_table "floors", force: true do |t|
    t.string   "name"
    t.string   "image_interior_file_name"
    t.string   "image_interior_content_type"
    t.integer  "image_interior_file_size"
    t.datetime "image_interior_updated_at"
    t.string   "image_structure_file_name"
    t.string   "image_structure_content_type"
    t.integer  "image_structure_file_size"
    t.datetime "image_structure_updated_at"
    t.string   "image_perspective_file_name"
    t.string   "image_perspective_content_type"
    t.integer  "image_perspective_file_size"
    t.datetime "image_perspective_updated_at"
    t.integer  "action_id"
    t.integer  "collection_id"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alt_inter"
    t.string   "title_inter"
    t.text     "desc_inter"
    t.string   "alt_struct"
    t.string   "title_struct"
    t.text     "desc_struct"
    t.string   "alt_per"
    t.string   "title_per"
    t.text     "desc_per"
    t.string   "floor_url"
  end

  create_table "for_brands", force: true do |t|
    t.integer  "sub_catalog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "index_page_about_companies", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "int_exts", force: true do |t|
    t.string   "name"
    t.string   "image_interior_file_name"
    t.string   "image_interior_content_type"
    t.integer  "image_interior_file_size"
    t.datetime "image_interior_updated_at"
    t.string   "image_structure_file_name"
    t.string   "image_structure_content_type"
    t.integer  "image_structure_file_size"
    t.datetime "image_structure_updated_at"
    t.integer  "action_id"
    t.integer  "collection_id"
    t.integer  "brand_id"
    t.integer  "sub_catalog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cpde_product"
    t.string   "alt_inter"
    t.string   "title_inter"
    t.text     "desc_inter"
    t.string   "alt_struct"
    t.string   "title_struct"
    t.text     "desc_struct"
    t.string   "alt_per"
    t.string   "title_per"
    t.text     "desc_per"
    t.string   "interior_url"
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

  create_table "laminate_images", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "thumb_file_name"
    t.string   "thumb_content_type"
    t.integer  "thumb_file_size"
    t.datetime "thumb_updated_at"
    t.integer  "laminate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "laminates", force: true do |t|
    t.string   "name"
    t.boolean  "public"
    t.integer  "index_sort"
    t.integer  "render_interior_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_banner_slides", force: true do |t|
    t.string   "name"
    t.string   "back_image_file_name"
    t.string   "back_image_content_type"
    t.integer  "back_image_file_size"
    t.datetime "back_image_updated_at"
    t.string   "layer_image_file_name"
    t.string   "layer_image_content_type"
    t.integer  "layer_image_file_size"
    t.datetime "layer_image_updated_at"
    t.text     "content"
    t.integer  "index_sorting"
    t.integer  "future"
    t.integer  "main_banner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slide_link"
  end

  create_table "main_banners", force: true do |t|
    t.string   "name"
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
    t.integer  "index_main_catalog"
  end

  create_table "main_label_carousels", force: true do |t|
    t.string   "label_name"
    t.string   "label_image_file_name"
    t.string   "label_image_content_type"
    t.integer  "label_image_file_size"
    t.datetime "label_image_updated_at"
    t.string   "label_alt"
    t.integer  "index_sorting"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
  end

  create_table "pdf_catalogs", force: true do |t|
    t.string   "title"
    t.string   "path_file_name"
    t.string   "path_content_type"
    t.integer  "path_file_size"
    t.datetime "path_updated_at"
    t.integer  "selected_catalog"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "promotion_url"
  end

  create_table "publication_banners", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "short_description"
    t.text     "description"
    t.integer  "index_sorting"
    t.string   "link"
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
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "region_contacts", force: true do |t|
    t.string   "region"
    t.string   "name"
    t.string   "phones"
    t.string   "mails"
    t.integer  "contanct_page_id"
    t.integer  "index_sorting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_products", force: true do |t|
    t.string   "name"
    t.string   "code_product"
    t.string   "image_interior_file_name"
    t.string   "image_interior_content_type"
    t.integer  "image_interior_file_size"
    t.datetime "image_interior_updated_at"
    t.string   "image_structure_file_name"
    t.string   "image_structure_content_type"
    t.integer  "image_structure_file_size"
    t.datetime "image_structure_updated_at"
    t.integer  "action_id"
    t.integer  "collection_id"
    t.integer  "brand_id"
    t.integer  "sub_catalog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alt_inter"
    t.string   "title_inter"
    t.text     "desc_inter"
    t.string   "alt_struct"
    t.string   "title_struct"
    t.text     "desc_struct"
    t.string   "alt_per"
    t.string   "title_per"
    t.text     "desc_per"
    t.string   "related_url"
  end

  create_table "render_interiors", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "thumb_file_name"
    t.string   "thumb_content_type"
    t.integer  "thumb_file_size"
    t.datetime "thumb_updated_at"
    t.integer  "position_x"
    t.integer  "position_y"
    t.boolean  "public"
    t.integer  "index_sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seo_dynamics", force: true do |t|
    t.text     "meta_title"
    t.text     "meta_keywords"
    t.text     "meta_descriptions"
    t.integer  "door_id"
    t.integer  "floor_id"
    t.integer  "int_ext_id"
    t.integer  "exterior_id"
    t.integer  "related_product_id"
    t.integer  "collection_id"
    t.integer  "brand_id"
    t.integer  "sub_catalog_id"
    t.integer  "publication_id"
    t.integer  "interest_news_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seo_meta_tags", force: true do |t|
    t.text     "index_title"
    t.text     "index_keywords"
    t.text     "index_descriptions"
    t.text     "about_us_title"
    t.text     "about_us_keywords"
    t.text     "about_us_descriptions"
    t.text     "promotion_title"
    t.text     "promotion_keywords"
    t.text     "promotion_descriptions"
    t.text     "contacts_title"
    t.text     "contacts_keywords"
    t.text     "contacts_descriptions"
    t.text     "terms_of_used_title"
    t.text     "terms_of_used_keywords"
    t.text     "terms_of_used_descriptions"
    t.text     "site_map_title"
    t.text     "site_map_keywords"
    t.text     "site_map_descriptions"
    t.text     "publication_title"
    t.text     "publication_keywords"
    t.text     "publication_descriptions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "useful_video_title"
    t.text     "useful_video_keyword"
    t.text     "useful_video_description"
    t.text     "interest_news_title"
    t.text     "interest_news_keyword"
    t.text     "interest_news_description"
    t.text     "floor_title"
    t.text     "floor_keyword"
    t.text     "floor_description"
    t.text     "int_ext_title"
    t.text     "int_ext_keyword"
    t.text     "int_ext_description"
    t.text     "exterior_title"
    t.text     "exterior_keyword"
    t.text     "exterior_description"
    t.text     "related_product_title"
    t.text     "related_product_keyword"
    t.text     "related_product_description"
  end

  create_table "special_offers", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.text     "description"
  end

  create_table "subscribes", force: true do |t|
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms_of_uses", force: true do |t|
    t.text     "descriptions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_products", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "useful_videos", force: true do |t|
    t.string   "title"
    t.text     "video_url",    limit: 255
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

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
    t.text     "video_url",    limit: 255
    t.text     "descriptions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
