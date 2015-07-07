require 'rails_helper'

RSpec.describe User, type: :model do

	context "validations" do
		it 'has a valid factory'do
			user = FactoryGirl.build(:user_with_cars)
			expect(user).to be_valid 
		end
	end
end
