class VideoMetadatum < ApplicationRecord
    belongs_to :channel
    belongs_to :video

    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    
    mapping do
        indexes :published_date, type: :date
    end

    def self.search(query)
        # build and run search
      end
end
