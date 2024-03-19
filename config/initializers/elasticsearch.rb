if Rails.env.production?
  Elasticsearch::Model.client = Elasticsearch::Client.new(
    url: ENV['ELASTICSEARCH_URL'],
    user: ENV['ELASTICSEARCH_USER'],
    password: ENV['ELASTICSEARCH_PASSWORD']
  )
else
  # Default to localhost:9200 for development and test environments
  Elasticsearch::Model.client = Elasticsearch::Client.new(
    url: 'http://localhost:9200'
  )
end
