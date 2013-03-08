
Mongo Connector
===============

A simple gem for connecting to Mongo databases.

The Mongo Connector takes the URI you give it and connects to the database the URI describes. If the URI is blank, MHQC will try to connect to a database you name on a local Mongo instance.

### Usage

Gemfile:

```ruby
gem 'mongo_connector'
```

Shell:

```shell
gem install mongo_connector
```

Code:

```ruby
require 'mongo_connector'

db = MongoConnector.new(ENV['MONGOHQ_URL'], 'my_database').connection

collection = db['my_collection']
```


