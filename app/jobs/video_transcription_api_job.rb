require 'net/http'
require 'json'

class VideoTranscriptionApiJob < ApplicationJob
  queue_as :default


  # USED FOR REQUEST TO TRANSCRIBE RECURRING CHANNEL SCRAPES
  # OR AN INDIVIDUAL VIDEO REQUEST
  #
  #
  # DEPRECATED USE ONLY FOR REFERENCE
  # NOT USED IN ANYTHING
  #
  #

  # WORK NEEDED TO PARSE CHANNEL REQUEST OR INDIVIDUAL VIDEO
  # REQUEST
  
  def perform(url:)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response_json = JSON.parse(response) 
    
    response_json.each do |json|
      video = Video.find_or_create_by(title: json["title"]) do |video|
        video.title = json["title"] 
        video.description = json["description"]
      end
      
      transcript = Transcript.find_or_create_by(transcript: json["transcript"]) do |trans|
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
      
      meta = VideoMetadatum.create! do |meta|
        meta.url = json["url"]
        meta.thumbnail_url = json["thumbnail_url"]
        meta.video_identifier = json["video_id"]
        meta.published_date = json["published_date"]
        meta.video_id = video.id
        meta.channel_id = channel.id
      end
      
      Search.create! do |search|
        search.video_title = json["title"] 
        search.video_description = json["description"]
        search.transcript_language = json["language"]
        search.transcript = json["transcript"]
        search.platform_name = json["platform"]
        search.channel_title = json["channel_title"]
        search.channel_id = json["channel_id"]
        search.video_url = json["url"]
        search.thumbnail_url = json["thumbnail_url"]
        search.video_identifier = json["video_id"]
        search.published_date = json["published_date"]
        search.video_id = video.id
        search.transcript_id = transcript.id
        search.platform_id = platform.id
        search.channel_id = channel.id
        search.meta_id = meta.id
      end
    end
  end

end
