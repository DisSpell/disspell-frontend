class Transcript < ApplicationRecord
  include PgSearch::Model
  belongs_to :video

    
  pg_search_scope :search_transcript,
    against: :transcript, 
    using: { 
      tsearch: { 
        dictionary: "english",
        tsvector_column: 'tsvector_content_tsearch',
        prefix: true
      }
    }
end
