class Car < ActiveRecord::Base
	has_many :trips
	belongs_to :user
	validates_inclusion_of :model, in: ['Cherokee', 'Wrangler', 'Grand Cherokee']
	validates_inclusion_of :make, in: ['Jeep']
	validates_inclusion_of :seats, in: ['1', '2', '3', '4', '5', '6'], message: 'Seats need to be 1 - 6'

	def full_description
		"The #{self.make} #{self.model} - has the ability to seat #{self.seats} passengers"
	end

	def by_model
		order(:model)
	end

	def suv?
		self.seats > 4
	end
end
