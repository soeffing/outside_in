FactoryGirl.define do
  factory :profile do
  	association :user, :factory => :user
  	first_ame "John"
  	last_name "Snow"
  	city      "Rainville"
  end
end
