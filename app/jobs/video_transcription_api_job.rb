require 'net/http'
require 'json'

class VideoTranscriptionApiJob < ApplicationJob
  queue_as :default

  def perform(url:)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response_json = JSON.parse(response) 
    
    response_json.each do |json|
      video = Video.find_or_create_by(title: json["title"]) do |video|
        video.title = json["title"] 
        video.description = json["description"]
      end
      
      Transcript.find_or_create_by(transcript: json["transcript"]) do |trans|
        trans.language = json["language"]
        trans.transcript = json["transcript"]
        trans.video_id = video.id
      end
      
      platform = Platform.find_or_create_by(name: json["platform"]) do |plat|
        plat.name = json["platform"]
        # plat.url = json["platform_url"]
      end

      channel = Channel.find_or_create_by(title: json["channel_title"]) do |chan|
        chan.title = json["channel_title"]
        chan.channel_id = json["channel_id"]
        chan.scraped_date = nil
        chan.url = nil
        chan.platform_id = platform.id
      end
      
      VideoMetadatum.create! do |meta|
        meta.url = json["url"]
        meta.thumbnail_url = json["thumbnail_url"]
        meta.video_identifier = json["video_id"]
        meta.published_date = json["published_date"]
        meta.video_id = video.id
        meta.channel_id = channel.id
      end
    end
  end

end
