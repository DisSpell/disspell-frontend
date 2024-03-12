require("json")
require("net/http")

class InputSearchKeyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts args[0]

    url = "http://45.56.66.213/videos"
    # url = "http://45.79.10.188/video_scrape_api"
    uri = URI(url)
    request = Net::HTTP.post(uri, args[0].to_json, headers = {'Accept' => 'application/json', 'Content-Type' => "application/json"})
    puts request
  end
end
