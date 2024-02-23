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

ActiveRecord::Schema[7.1].define(version: 2024_02_13_220335) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.index ["tsvector_content_tsearch"], name: "videos_tsvector_content_tsearch_idx", using: :gin
  end

  add_foreign_key "channels", "platforms"
  add_foreign_key "transcripts", "videos"
  add_foreign_key "video_metadata", "channels"
  add_foreign_key "video_metadata", "videos"
end
