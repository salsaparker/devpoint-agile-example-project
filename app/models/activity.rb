class Activity < ActiveRecord::Base
	belongs_to :destination
	validates_presence_of :name

	def longer_than_an_hour?
		self.duration > 60
	end
end
