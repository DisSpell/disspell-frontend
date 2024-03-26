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

ActiveRecord::Schema[7.1].define(version: 2024_03_25_212045) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advanced_searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ahoy_events", force: :cascade do |t|
    t.bigint "visit_id"
    t.bigint "user_id"
    t.string "name"
    t.jsonb "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["properties"], name: "index_ahoy_events_on_properties", opclass: :jsonb_path_ops, using: :gin
    t.index ["user_id"], name: "index_ahoy_events_on_user_id"
    t.index ["visit_id"], name: "index_ahoy_events_on_visit_id"
  end

  create_table "ahoy_visits", force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.bigint "user_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.string "referring_domain"
    t.text "landing_page"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.string "country"
    t.string "region"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.string "app_version"
    t.string "os_version"
    t.string "platform"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_ahoy_visits_on_user_id"
    t.index ["visit_token"], name: "index_ahoy_visits_on_visit_token", unique: true
    t.index ["visitor_token", "started_at"], name: "index_ahoy_visits_on_visitor_token_and_started_at"
  end

  create_table "channels", force: :cascade do |t|
    t.string "title"
    t.string "channel_id"
    t.datetime "scraped_date"
    t.string "url"
    t.bigint "platform_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_id"], name: "index_channels_on_platform_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "video_title"
    t.text "video_description"
    t.string "transcript_language"
    t.text "transcript"
    t.string "platform_name", array: true
    t.string "channel_title"
    t.string "thumbnail_url"
    t.date "published_date"
    t.integer "video_id"
    t.integer "transcript_id"
    t.integer "platform_id"
    t.integer "channel_id"
    t.integer "meta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subdomain", default: [], array: true
  end

  create_table "transcripts", force: :cascade do |t|
    t.string "language"
    t.text "transcript"
    t.bigint "video_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.tsvector "tsvector_content_tsearch"
    t.index ["tsvector_content_tsearch"], name: "transcripts_tsvector_content_tsearch_idx", using: :gin
    t.index ["video_id"], name: "index_transcripts_on_video_id"
  end

  create_table "video_metadata", force: :cascade do |t|
    t.string "url"
    t.string "thumbnail_url"
    t.string "video_identifier"
    t.datetime "published_date"
    t.bigint "video_id", null: false
    t.bigint "channel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_video_metadata_on_channel_id"
    t.index ["video_id"], name: "index_video_metadata_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.tsvector "tsvector_content_tsearch"
    t.string "slug"
    t.index ["slug"], name: "index_videos_on_slug", unique: true
    t.index ["tsvector_content_tsearch"], name: "videos_tsvector_content_tsearch_idx", using: :gin
  end

  add_foreign_key "channels", "platforms"
  add_foreign_key "transcripts", "videos"
  add_foreign_key "video_metadata", "channels"
  add_foreign_key "video_metadata", "videos"
end
