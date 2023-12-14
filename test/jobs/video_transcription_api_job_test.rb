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

  # test "Platform is unique" do
  #   assert Platform.first
 
  test "Check for Channel Id" do
    assert Channel.first.channel_id == "UCSp-OaMpsO8K0KkOqyBl7_w"
  end
  
  test "Check for Channel Platform Id" do
    assert Channel.first.platform_id == Platform.first.id
  end

  test "VideoMetaDatum thumbnail url" do
    assert VideoMetadatum.first.thumbnail_url == "https://i.ytimg.com/vi/e9l1VKz8AgQ/default.jpg"
  end

  test "Video metadata video id" do
    assert VideoMetadatum.first.video_id == Video.first.id
  end

  test "Video metadata channel id" do
    assert VideoMetadatum.first.channel_id == Channel.first.id
  end
end
   