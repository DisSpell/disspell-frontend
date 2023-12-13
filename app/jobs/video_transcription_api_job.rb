require 'net/http'
require 'json'

class VideoTranscriptionApiJob < ApplicationJob
  queue_as :default

  def perform(url:)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response_json = JSON.parse(response) 
    
    response_json.each do |json|
      video = Video.create! do |video|
        video.title = json["title"] 
        video.description = json["description"]
      end
      
      Transcript.create! do |trans|
        trans.language = json["language"]
        trans.transcript = json["transcript"]
        trans.video_id = video["id"]
      end
      
      Platform.create! do |plat|
        plat.name = json["platform"]
        # plat.url = json["platform_url"]
      end
      
      # VideoMetadatum.create! do |meta|
        # meta.url =
        # meta.thumbnail_url =
        # meta.video_identifier =
        # meta.published_date =
      # end

    end
  end
end
