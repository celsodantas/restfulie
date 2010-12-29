require 'spec_helper'

describe Restfulie do
  
  it "should accept parameters in get requests" do
    result = Restfulie.at('http://localhost:4567/request_with_querystring').get(:foo => "bar", :bar => "foo")
    params  = JSON.parse(result.body)
    params["foo"].should == "bar"
    params["bar"].should == "foo"
  end
  
end