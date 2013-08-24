require 'spec_helper'

describe "offers/edit" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :product => nil,
      :buyer => "MyString",
      :seller => "MyString",
      :buyer_price => "9.99",
      :seller_price => "9.99"
    ))
  end

  it "renders the edit offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", offer_path(@offer), "post" do
      assert_select "input#offer_product[name=?]", "offer[product]"
      assert_select "input#offer_buyer[name=?]", "offer[buyer]"
      assert_select "input#offer_seller[name=?]", "offer[seller]"
      assert_select "input#offer_buyer_price[name=?]", "offer[buyer_price]"
      assert_select "input#offer_seller_price[name=?]", "offer[seller_price]"
    end
  end
end
