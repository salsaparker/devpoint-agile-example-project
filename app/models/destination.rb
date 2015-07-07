class Destination < ActiveRecord::Base
	belongs_to :trip
	has_many :activities
	validates_presence_of :name

	def activity_description
		"#{self.trip.name} in #{self.name} - has #{self.activities.count} things to do!"
	end

	def by_name
		order(:name)
	end
end
