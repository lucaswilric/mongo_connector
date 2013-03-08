require 'mongo'

class MongoConnector
  # Connect to a Mongo database and authenticate
  #
  # Example:
  #  >> mc = MongoConnector.new('http://user:password@my.mongo.host.com/my_db', 'my_db')
  #  >> mc.connection
  #  => <#Mongo::Connection ... >
  #
  # Arguments: 
  #  default_collection: String
  #

  attr_accessor :connection

  def initialize(mongo_uri = nil, default_collection = nil)
    if [nil ,''].include? mongo_uri
      if [nil, ''].include? default_collection
        raise 'Could not connect to any MongoDB.'
      else
        @connection = Mongo::Connection.new.db(default_collection)
      end
    else
      url = URI.parse(mongo_uri)
      conn = Mongo::Connection.new(url.host, url.port)
      @connection = conn.db(url.path.gsub(/^\//, ''))
      @connection.authenticate(url.user, url.password) if authenticate?(url)
    end
  end

  VERSION = '0.0.0.pre'

  private
  def authenticate?(url)
    blanks = ['', nil]
    not (blanks.include?(url.user) && blanks.include?(url.password))
  end
end

