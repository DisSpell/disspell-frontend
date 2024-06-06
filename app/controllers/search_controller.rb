class SearchController < ApplicationController
  def index
    if params[:query].present?
      @search = Search.search(params[:query]).records
      @response = @search.paginate(page: params[:page], per_page: 10)
    end
  end

  def show
  end
end
