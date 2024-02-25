class VideosController < ApplicationController
  include PartsTimestampsSplit

  def show
    @video = Video.friendly.find(params[:id])
    @transcript = @video.transcripts[0]
    @meta = @video.video_metadata[0]
    @channel = Channel.find(@meta.channel_id)
    @platform = Platform.find(@channel.platform_id)

    @parts_timestramps_arrays = timestamps_parts_split(@transcript.transcript).transpose
  
    @page_title = @video.title
    @page_description = @video.transcripts[0].transcript.truncate(10)
    #@page_keywords = 
  
  end
end
