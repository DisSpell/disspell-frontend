class Channel < ApplicationRecord
    belongs_to :platform
    has_many :video_metadata, dependent: :destroy

    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    
    mapping do
        indexes :title, type: :text
    end

    def self.search(query)
        # build and run search
    end

    def self.search(query)
        # build and run search
      end


end
