class SearchController < ApplicationController
  def index
    if params[:query].present?
      @response = Search.search(params[:query]).response.hits.hits
        
      #postgres shit
      @video = Video.search_video(params[:query])
      @transcript = Transcript.search_transcript(params[:query])  
      #result is the video ids of matched searches
      @result = (@video.map(&:id) + @transcript.map(&:video_id))
    end
  end

  def show
  end
end
