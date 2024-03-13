class Search < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  mapping do
    indexes :video_title, type: :text
    indexes :video_description, type: :text
    indexes :transcript, type: :text
    indexes :transcript_language, type: :keyword
    indexes :platform_name, type: :keyword
    indexes :channel_title, type: :text
    indexes :thumbnail_url, type: :keyword
    indexes :published_date, type: :date
    indexes :video_id, type: :integer
    indexes :transcript_id, type: :integer
    indexes :platform_id, type: :integer
    indexes :channel_id, type: :integer
    indexes :meta_id, type: :integer
  end

  def self.search(query)
    # build and run search

    params = {
      # size: 10,
      # from: 20,
      query: {
        bool: {
          should: [
            { match: { video_title: query } },
            { match: { transcript: query } },
          ],
        },
      },
    }

    self.__elasticsearch__.search(params)
  end
end
