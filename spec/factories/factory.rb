FactoryGirl.define do
	factory :user do
		name "God Doyi"

	end

	factory :car do
		brand "Hyundai"
		model "Sonata"
	end

	sequence :email do |n|
		"#{n}@rappers.com"
	end

	factory :user_with_cars, :parent => :user do |user|
		cars {build_list(:car, 3)}
	end
end

