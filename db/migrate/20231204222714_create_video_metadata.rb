class CreateVideoMetadata < ActiveRecord::Migration[7.1]
  def change
    create_table :video_metadata do |t|
      t.string "url"
      t.string "thumbnail_url"
      t.string "video_identifier"
      t.datetime "published_date"
      t.references :video, null: false, foreign_key: true
      t.references :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
