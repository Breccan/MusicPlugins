require 'spec_helper'

describe ContentObject do
  before(:each) do
    @valid_attributes = {
      :name => 'Footle',
      :description => "Cats"
    }
    @invalid_attributes = {
      :description => "cats"
    }
  end

  it "should create a new instance given valid attributes" do
    ContentObject.create!(@valid_attributes)
  end
  
  it "should require a valid name" do
    ContentObject.create!(@invalid_attributes).should == false
  end
end
