class ViewsController < ApplicationController

    def index
        @views= Ahoy::Event.all


        @chart = Ahoy::Event
        .where('time > ?', 24.hours.ago)
        .where_properties(controller: "videos")
        .group_by_minute(:time)
        .count

        @search = Ahoy::Event
        .where('time > ?', 24.hours.ago)
        .where_properties(controller: "search")
        .group_by_minute(:time)
        .count

        @top_videos = Ahoy::Event
        .where('time > ?', 24.hours.ago)
        .where_properties(controller: "videos", action: "show")
        .map {|e| e.properties["id"]}.tally
        .sort_by {|k,v| -v}
    end 

end
