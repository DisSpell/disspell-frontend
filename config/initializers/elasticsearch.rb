if Rails.env.production?
  Elasticsearch::Model.client = Elasticsearch::Client.new(
    url: ENV['ELASTIC_URL'],
    http: {user: ENV['ELASTIC_USER'], password: ENV['ELASTIC_PASSWORD']}
  )
else
  # Default to localhost:9200 for development and test environments
  Elasticsearch::Model.client = Elasticsearch::Client.new(
    url: 'http://localhost:9200'
  )
end
