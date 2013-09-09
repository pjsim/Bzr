require 'spec_helper'

describe Product do
  it "has a valid factory" do
  	FactoryGirl.create(:product).should be_valid
  end
  it "is invalid without a name" do
  	FactoryGirl.build(:product, name: nil).should_not be_valid
  end
  it "is invalid without a price" do
  	FactoryGirl.build(:product, price: nil).should_not be_valid
  end
end
