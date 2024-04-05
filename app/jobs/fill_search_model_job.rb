class FillSearchModelJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    #
    # THis is just to have moved it into ElasticSearch

    Video.all.each do |video|
      title = video.title
      description = video.description
      video_id = video.id
      
      transcriptModel = video.transcripts.first
      transcript = transcriptModel.transcript
      language = transcriptModel.language
      transcript_id = transcriptModel.id

      videoMetaModel = video.video_metadata.first
      published_date = videoMetaModel.published_date
      thumbnail_url = videoMetaModel.thumbnail_url
      meta_id = videoMetaModel.id

      channelModel = Channel.find(videoMetaModel.channel_id)
      channel_title = channelModel.title
      channel_id = channelModel.id

      platformModel = Platform.find(channelModel.platform_id)
      platform_name = platformModel.name
      platform_id = platformModel.id

      Search.find_or_create_by(video_id: video_id) do |search|
        search.video_title = title
        search.video_description = description
        search.transcript = transcript
        search.transcript_language = language
        search.platform_name = platform_name
        search.channel_title = channel_title
        search.thumbnail_url = thumbnail_url
        search.published_date = published_date
        search.video_id = video_id
        search.transcript_id = transcript_id
        search.platform_id = platform_id
        search.channel_id = channel_id
        search.meta_id = meta_id
      end
    end
  end
end
