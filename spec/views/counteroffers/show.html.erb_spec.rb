require 'spec_helper'

describe "counteroffers/show" do
  before(:each) do
    @counteroffer = assign(:counteroffer, stub_model(Counteroffer,
      :offer => nil,
      :buyer => "Buyer",
      :seller => "Seller",
      :buyer_price => "Buyer Price",
      :seller_price => "Seller Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Buyer/)
    rendered.should match(/Seller/)
    rendered.should match(/Buyer Price/)
    rendered.should match(/Seller Price/)
  end
end
