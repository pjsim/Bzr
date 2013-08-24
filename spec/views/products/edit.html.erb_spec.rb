require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :price => "9.99",
      :sold => false,
      :user => nil
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "input#product_price[name=?]", "product[price]"
      assert_select "input#product_sold[name=?]", "product[sold]"
      assert_select "input#product_user[name=?]", "product[user]"
    end
  end
end
