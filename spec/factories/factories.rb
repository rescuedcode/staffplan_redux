FactoryGirl.define do
  factory :user do
    sequence(:email)            { |n| "test-#{n}@example.com" }
    password                    "password123"
    password_confirmation       "password123"
    sequence(:first_name)       { |n| "First#{n}" }
    sequence(:last_name)        { |n| "Last#{n}" }
  end
end
