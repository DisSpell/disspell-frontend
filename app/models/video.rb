class Video < ApplicationRecord
  include PgSearch::Model
  has_many :video_metadata, dependent: :destroy
  has_many :transcripts, dependent: :destroy

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  
  mapping do
    indexes :title, type: :text
  end

  def self.search(query)
    # build and run search
    params = {
      query: {
        match: {
          title: query,
        },
      },
    }

    self.__elasticsearch__.search(params)
  end

  pg_search_scope :search_video,
    against: [:title, :description],
    using: { 
      tsearch: { 
        dictionary: "english",
        tsvector_column: 'tsvector_content_tsearch',
        prefix: true
      }
    }

  after_save :update_tsvector_column

  def update_tsvector_column
    # self.update_column(:tsvector_content_tsearch, to_tsvector('english', title))
    self.class.connection.execute("UPDATE videos SET tsvector_content_tsearch = to_tsvector('english', title) WHERE id = #{self.id}")
  end
end
