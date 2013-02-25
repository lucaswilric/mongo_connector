
MongoHQ Connector
=================

A simple gem for connecting to MongoHQ databases.

The MongoHQ Connector grabs the `MONGOHQ_URL` environment variable and connects to the database it describes. If the variable isn't populated, MHQC will try to connect to a database you name on a local Mongo instance.

### Usage

Gemfile:

```ruby
gem 'mongo_hq_connector'
```

Shell:

```shell
gem install mongo_hq_connector
```

Code:

```ruby
require 'mongo_hq_connector'

db = MongoHqConnector.connection('my_database')

collection = db['my_collection']
```


