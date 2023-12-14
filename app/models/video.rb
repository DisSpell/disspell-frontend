class Video < ApplicationRecord
    has_many :video_metadata, dependent: :destroy
    has_many :transcripts, dependent: :destroy
end
