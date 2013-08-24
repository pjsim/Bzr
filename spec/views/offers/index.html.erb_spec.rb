require 'spec_helper'

describe "offers/index" do
  before(:each) do
    assign(:offers, [
      stub_model(Offer,
        :product => nil,
        :buyer => "Buyer",
        :seller => "Seller",
        :buyer_price => "9.99",
        :seller_price => "9.99"
      ),
      stub_model(Offer,
        :product => nil,
        :buyer => "Buyer",
        :seller => "Seller",
        :buyer_price => "9.99",
        :seller_price => "9.99"
      )
    ])
  end

  it "renders a list of offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Buyer".to_s, :count => 2
    assert_select "tr>td", :text => "Seller".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
