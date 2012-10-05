# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    gender "m"
    size "18 months"
    brand "Osh Kosh"
    association :user
    association :box
    type "dresses"
  end
end
