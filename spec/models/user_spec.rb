require 'rails_helper'

RSpec.describe User, type: :model do
	
	let(:user) {FactoryGirl.create(:user)}

	context "asssociations" do
		describe User do
			it {should have_many(:cars)}
			it {should have_many(:trips)}
		end
	end
	
	context "validations" do
		
		it 'has a valid factory' do
			user = FactoryGirl.build(:user_with_cars)
			expect(user).to be_valid 
		end

		describe User do 
			it { should validate_presence_of(:name)}
		end

		describe 'User' do
			it 'does no have an about' do
			 binding.pry
				expect(user.has_about?).to eq(false)
			end
		end
	end

	context "ordering" do
		before(:each) do 
		 	@user1 = User.create(name: 'Richie', email: 'richie@example.com')
		 	@user2 = User.create(name: 'Moby', email: 'moby@example.com')
		 	@user3 = User.create(name: 'Laura', email: 'laura@example.com')
		end

		describe ".by_email" do
			it "orders users by email" do
			 	expect(User.all.by_email.first).to eq(@user3)
			end
		end
	end
end
