require 'rails_helper'

RSpec.describe User, type: :model do

	context "asssociations" do
		describe User do
			it {should have_many(:cars)}
			it {should have_many(:trips)}
		end
	end
	
	context "validations" do
		it 'has a valid factory'do
			user = FactoryGirl.build(:user_with_cars)
			expect(user).to be_valid 
		end
	end
end