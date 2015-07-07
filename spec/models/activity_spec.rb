require 'rails_helper'

RSpec.describe Activity, type: :model do

	let(:activity) {Activity.create(name: 'swimming', duration: 120, destination_id: 1)}

	context "validations" do
	
		describe "validate name" do

			it 'it has a valid name' do
				expect(Activity.new(name: 'swimming')).to be_valid
			end

			it 'does not save without a name' do
				expect(Activity.new()).to_not be_valid
			end
		end
	end

	context "instance methods" do

		describe "#longer_than_an_hour" do

			it 'returns true if activity is longer than an hour' do
				activity
				expect(activity.duration > 60).to be true
			end

			it 'returns false if activity is shorter than an hour' do
				new_activity = Activity.new(name: 'situps', duration: 10 )
				expect(new_activity.duration > 60).to be false
			end
  	end
	end
end

