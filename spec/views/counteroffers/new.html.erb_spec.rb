require 'spec_helper'

describe "counteroffers/new" do
  before(:each) do
    assign(:counteroffer, stub_model(Counteroffer,
      :offer => nil,
      :buyer => "MyString",
      :seller => "MyString",
      :buyer_price => "MyString",
      :seller_price => "MyString"
    ).as_new_record)
  end

  it "renders new counteroffer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", counteroffers_path, "post" do
      assert_select "input#counteroffer_offer[name=?]", "counteroffer[offer]"
      assert_select "input#counteroffer_buyer[name=?]", "counteroffer[buyer]"
      assert_select "input#counteroffer_seller[name=?]", "counteroffer[seller]"
      assert_select "input#counteroffer_buyer_price[name=?]", "counteroffer[buyer_price]"
      assert_select "input#counteroffer_seller_price[name=?]", "counteroffer[seller_price]"
    end
  end
end
