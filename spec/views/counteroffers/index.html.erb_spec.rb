require 'spec_helper'

describe "counteroffers/index" do
  before(:each) do
    assign(:counteroffers, [
      stub_model(Counteroffer,
        :offer => nil,
        :buyer => "Buyer",
        :seller => "Seller",
        :buyer_price => "Buyer Price",
        :seller_price => "Seller Price"
      ),
      stub_model(Counteroffer,
        :offer => nil,
        :buyer => "Buyer",
        :seller => "Seller",
        :buyer_price => "Buyer Price",
        :seller_price => "Seller Price"
      )
    ])
  end

  it "renders a list of counteroffers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Buyer".to_s, :count => 2
    assert_select "tr>td", :text => "Seller".to_s, :count => 2
    assert_select "tr>td", :text => "Buyer Price".to_s, :count => 2
    assert_select "tr>td", :text => "Seller Price".to_s, :count => 2
  end
end
