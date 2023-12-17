class Video < ApplicationRecord
  include PgSearch
  has_many :video_metadata, dependent: :destroy
  has_many :transcripts, dependent: :destroy

  pg_search_scope :search_video,
    against: [:title, :description],
    using: { tsearch: { dictionary: "english" } }
end
