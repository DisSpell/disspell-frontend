require("json")
require("net/http")

class InputSearchKeyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    # puts args[0]
    Rails.logger.info(args[0])

    url = "http://5.78.72.39/videos"

    uri = URI(url)
    request = Net::HTTP.post(uri, args[0].to_json, headers = {'Accept' => 'application/json', 'Content-Type' => "application/json"})
    puts request
  end
end
