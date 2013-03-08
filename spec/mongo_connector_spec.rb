require 'spec_helper'

describe 'MongoConnector#connection' do
  context "when assigning a blank URI" do
    let(:mc) { MongoConnector.new('', 'test') }
    let(:c)  { mc.connection }

    it 'returns a Mongo::DB' do
      c.should be_a Mongo::DB
    end

    it "has a connection with a host of 'localhost'" do
      c.connection.host.should == 'localhost'
    end

    it "has a DB name of 'test'" do
      c.stats['db'].should == 'test'
    end
  end

  context "when assigning a URI of '127.0.0.1'" do
    let(:mc) { MongoConnector.new('mongodb://127.0.0.1/test') }
    let(:c)  { mc.connection }

    it 'returns a Mongo::DB' do
      c.should be_a Mongo::DB
    end

    it "has a connection with a host of '127.0.0.1'" do
      c.connection.host.should == '127.0.0.1'
    end

    it "has a DB name of 'test'" do
      c.stats['db'].should == 'test'
    end
  end
end
