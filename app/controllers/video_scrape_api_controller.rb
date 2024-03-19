class VideoScrapeApiController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        paramaters = params["_json"].each do |json|
            json = JSON.parse(json)

            ActiveRecord::Base.transaction do
                if VideoMetadatum.find_by(video_identifier: json["video_id"])
                    next
                end

                video = Video.create! do |video|
                    video.title = json["title"] 
                    video.description = json["description"]
                end
                
                transcript = Transcript.create! do |trans|
                    trans.language = json["language"]
                    trans.transcript = json["transcript"]
                    trans.video_id = video.id
                end
                
                platform = Platform.create! do |plat|
                    plat.name = json["platform"]
                end
            
                channel = Channel.create! do |chan|
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
                    search.thumbnail_url = json["thumbnail_url"]
                    search.published_date = json["published_date"]
                    search.subdomain = json["subdomain"]
                    search.video_id = video.id
                    search.transcript_id = transcript.id
                    search.platform_id = platform.id
                    search.channel_id = channel.id
                    search.meta_id = meta.id
                end
            end
        rescue ActiveRecord::RecordInvalid => e
            puts "ERROR!!!!!!!!!!!!!!!!!!!!!!!!!!!! Attempting to create videos"
            puts e
            puts "^ that was the error!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
              # Handle exception, log error, etc.
        end

        puts paramaters
    end

    def search_setup
    end

    def post
        puts params
        InputSearchKeyJob.perform_now(params)
        redirect_to search_setup_path
    end

end
