class CreateChannels < ActiveRecord::Migration[7.1]
  def change
    create_table :channels do |t|
      t.string "title"
      t.string "channel_id"
      t.datetime "scraped_date"
      t.string "url"
      t.references :platform, null: false, foreign_key: true

      t.timestamps
    end
  end
end
