Rails.logger.info "Elasticsearch URL: #{ENV.fetch('ELASTIC_URL', 'not set')}"
Rails.logger.info "Elasticsearch User: #{ENV.fetch('ELASTIC_USER', 'not set')}"

if Rails.env.production?
  Elasticsearch::Model.client = Elasticsearch::Client.new(
    url: ENV['ELASTIC_URL'],
    http_auth: [ENV['ELASTIC_USER'], ENV['ELASTIC_PASSWORD']]
  )
else
  # Default to localhost:9200 for development and test environments
  Elasticsearch::Model.client = Elasticsearch::Client.new(
    url: 'http://localhost:9200'
  )
end
