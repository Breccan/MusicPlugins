require 'spec_helper'

describe ContentObject do
  before(:each) do
    @valid_attributes = {
      :name => 'Footle',
      :description => "Cats",
      :user_id => 1,
      :category_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    ContentObject.create!(@valid_attributes)
  end
  
  it "should require a name" do
    ContentObject.new(@valid_attributes.delete('name')).should_not(be_valid) 
  end
  
  it "should require a description" do
    ContentObject.new(@valid_attributes.delete('description')).should_not(be_valid) 
  end
  
  it "should require a user_id" do
    ContentObject.new(@valid_attributes.delete('user_id')).should_not(be_valid) 
  end
  
  it "should require a category_id" do
    ContentObject.new(@valid_attributes.delete('category_id')).should_not(be_valid) 
  end
  
  it "should reject an invalid url" do
    @valid_attributes[:homepage] = "foo"
    ContentObject.new( @valid_attributes).should_not(be_valid) 
  end
  it "should accept a valid url" do
    @valid_attributes[:homepage] = "http://google.com"
    ContentObject.new( @valid_attributes).should(be_valid) 
  end
end
