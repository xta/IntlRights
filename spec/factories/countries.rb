# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :country do |c|
    c.sequence(:name)    { |n| "MyString#{n}" }
    c.sequence(:alpha2)  { |n| "MyString#{n}" }
    c.sequence(:alpha3)  { |n| "MyString#{n}" }
    c.sequence(:numeric) { |n| "MyString#{n}" }
  end
end
