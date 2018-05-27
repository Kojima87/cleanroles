FactoryBot.define do
  factory :role do
    sequence(:name) { |n| "役割#{n}" }
  end
end
