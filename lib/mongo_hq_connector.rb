require 'mongo'

class MongoHqConnector
  # Connect to a MongoHQ database
  #
  # Example:
  #  >> MongoHqConnector.connection('foo')
  #  => <#Mongo::Connection ... >
  #
  # Arguments: 
  #  default_collection: String
  #
  
  @@database = nil

  def self.connection(default_collection)
    return @@database if @@database
    
    if ENV['MONGOHQ_URL']
      url = URI.parse(ENV['MONGOHQ_URL'])
      conn = Mongo::Connection.new(url.host, url.port)
      @@database = conn.db(url.path.gsub(/^\//, ''))
      @@database.authenticate(url.user, url.password)
      
      @@database
    else
      @@database = Mongo::Connection.new.db(default_collection)
    end
  end
end

