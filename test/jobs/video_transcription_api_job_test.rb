require "test_helper"
require "net/http"
require "json"

class VideoTranscriptionApiJobTest < ActiveJob::TestCase
  setup do
    @data = JSON.parse(file_fixture("json_response.json").read)
    stub_request(:get, "https://your-api-url.com/endpoint")
      .to_return(
        body: @data.to_json,
        status: 200,
        headers: { "Content-Type": "application/json" }
      )
    @url = "https://your-api-url.com/endpoint"
    VideoTranscriptionApiJob.perform_now(url: @url)
    #  uri = URI("https://your-api-url.com/endpoint")
    #  @response = Net::HTTP.get(uri)
  end

  test "Check first api Video" do
    assert Video.first.title == @data[0]["title"]
  end
  
  test "Check first transcript" do
    assert Transcript.first.video_id == Video.first.id
  end
  
  test "Check first Platform" do
    assert Platform.first.name == "youtube"
  end
  
  # test "get first json object's title" do
    # assert @data[0]["title"] = "Rust’s most popular framework just got a major upgrade"
  # end
  
  # test "check number of results" do
    # assert @data.count == 4
  # end
  
  # test "Populate 2nd item into database" do
    # @response
  # end
end
   