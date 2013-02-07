# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :country do
    name "MyString"
    alpha2 "MyString"
    alpha3 "MyString"
    numeric "MyString"
  end
end
