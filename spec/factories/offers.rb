# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    product nil
    buyer "MyString"
    seller "MyString"
    buyer_price "9.99"
    seller_price "9.99"
  end
end
