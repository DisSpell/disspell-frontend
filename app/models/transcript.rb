class Transcript < ApplicationRecord
  include PgSearch
  belongs_to :video

    
  pg_search_scope :search_transcript,
    against: :transcript, 
    using: { tsearch: { dictionary: "english" } }
end
