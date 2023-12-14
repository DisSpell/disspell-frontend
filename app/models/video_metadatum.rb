class VideoMetadatum < ApplicationRecord
    belongs_to :channel
    belongs_to :video
end
