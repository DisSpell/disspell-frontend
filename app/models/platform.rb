class Platform < ApplicationRecord
    has_many :channels, dependent: :destroy

    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    
    # mapping do
    #     indexes :name, type: :text
    # end


    # before_create :check_unique_name

    # private
  
    # def check_unique_name
    #   if Platform.where(name: name).exists?
    #     raise ActiveRecord::RecordInvalid, "name already exists"
    #   end
    # end
end
