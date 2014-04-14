FactoryGirl.define do
  factory :user do
  	email "John@snow.com"
  	password "pass"

  	trait :with_profile do
  		association :profile, factory: :profile
  	end
  end
end
