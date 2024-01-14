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

  after_save :update_tsvector_column

  def update_tsvector_column
    # self.update_column(:tsvector_content_tsearch, to_tsvector('english', transcript))
    self.class.connection.execute("UPDATE transcripts SET tsvector_content_tsearch = to_tsvector('english', transcript) WHERE id = #{self.id}")
  end
end
