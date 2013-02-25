Gem::Specification.new do |s|
  s.name = 'mongo_hq_connector'
  s.version = '0.0.1'
  s.date = '2013-02-25'
  s.summary = 'MongoHQ connector'
  s.description = "Connect to a MongoHQ database using the MONGOHQ_URL environment variable if it exists, or else a default collection on the local Mongo."
  s.authors = ['Lucas Wilson-Richter']
  s.email = 'da.maestro@gmail.com'
  s.files = ["lib/mongo_hq_connector.rb"]
  s.homepage = 'http://github.com/lucaswilric/mongo_hq_connector'

  s.add_runtime_dependency 'mongo', '~> 1.6'
end
