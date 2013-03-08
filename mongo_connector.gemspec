Gem::Specification.new do |s|
  s.name = 'mongo_connector'
  s.version = '0.0.1.pre'
  s.date = '2013-03-03'
  s.summary = 'Mongo connector'
  s.description = "Connect to a Mongo database using the given URI if it is not blank, or else a default collection on the local Mongo."
  s.authors = ['Lucas Wilson-Richter']
  s.email = 'da.maestro@gmail.com'
  s.files = ["lib/mongo_connector.rb"]
  s.homepage = 'http://github.com/lucaswilric/mongo_connector'

  s.add_runtime_dependency 'mongo', '~> 1.6'
  s.add_runtime_dependency 'bson_ext', '~> 1.8.2'
end
