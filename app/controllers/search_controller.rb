class SearchController < ApplicationController
  def index
    if params[:query].present?
        @video = Video.search_video(params[:query])
        @transcript = Transcript.search_transcript(params[:query])
    end
  end

  def show
  end
end
