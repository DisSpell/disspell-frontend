class Video < ApplicationRecord
  include PgSearch::Model
  has_many :video_metadata, dependent: :destroy
  has_many :transcripts, dependent: :destroy

  pg_search_scope :search_video,
    against: [:title, :description],
    using: { 
      tsearch: { 
        dictionary: "english",
        tsvector_column: 'tsvector_content_tsearch',
        prefix: true
      }
    }
end
