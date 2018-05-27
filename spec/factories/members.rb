FactoryBot.define do
  factory :member do
    sequence(:name) { |n| "メンバー#{n}" }
  end
end
