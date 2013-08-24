require 'spec_helper'

describe "offers/show" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :product => nil,
      :buyer => "Buyer",
      :seller => "Seller",
      :buyer_price => "9.99",
      :seller_price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Buyer/)
    rendered.should match(/Seller/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
