FactoryGirl.define do
	factory :user do
		name "Suzy"
		email {generate :email}
		about nil
	end

	sequence :email do |n|
		"#{n}@example.com"
	end

	factory :user_with_cars, :parent => :user do |user|
		cars {build_list(:car, 3)}
	end
end