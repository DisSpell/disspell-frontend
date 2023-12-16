class VideoScrapeApiController < ApplicationController
    def index
        @video = Video.first
        @meta = @video.video_metadata[0]
        @transcript = @video.transcripts[0]
        @channel = Channel.find(@meta.channel_id)
        @platform = Platform.find(@channel.platform_id)
    end
end
