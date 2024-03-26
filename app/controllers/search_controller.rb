class SearchController < ApplicationController
  def index
    if params[:query].present?
      @response = Search.search(params[:query]).response.hits.hits
    end
  end

  def show
  end
end
