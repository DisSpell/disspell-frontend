class SearchController < ApplicationController
  def index
    if params[:query].present?
      @search = Search.search(params[:query]).records
      @response = @search.page(params[:page]).per(10)
    end
  end

  def show
  end
end
