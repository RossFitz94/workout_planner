FactoryBot.define do
  factory :user do
# Each user will have a unique eamil address
    sequence(:email) { |n| "example_user_#{n}@example.com" }
    password {"password"}
  end
end
