require 'spec_helper'

describe "counteroffers/edit" do
  before(:each) do
    @counteroffer = assign(:counteroffer, stub_model(Counteroffer,
      :offer => nil,
      :buyer => "MyString",
      :seller => "MyString",
      :buyer_price => "MyString",
      :seller_price => "MyString"
    ))
  end

  it "renders the edit counteroffer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", counteroffer_path(@counteroffer), "post" do
      assert_select "input#counteroffer_offer[name=?]", "counteroffer[offer]"
      assert_select "input#counteroffer_buyer[name=?]", "counteroffer[buyer]"
      assert_select "input#counteroffer_seller[name=?]", "counteroffer[seller]"
      assert_select "input#counteroffer_buyer_price[name=?]", "counteroffer[buyer_price]"
      assert_select "input#counteroffer_seller_price[name=?]", "counteroffer[seller_price]"
    end
  end
end
