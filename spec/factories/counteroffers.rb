# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :counteroffer do
    offer nil
    buyer "MyString"
    seller "MyString"
    buyer_price "MyString"
    seller_price "MyString"
  end
end
