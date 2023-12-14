class Channel < ApplicationRecord
    belongs_to :platform
    has_many :video_metadata, dependent: :destroy
end
