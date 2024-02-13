class CreateSearches < ActiveRecord::Migration[7.1]
  def change
    create_table :searches do |t|
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

      t.timestamps
    end
  end
end
