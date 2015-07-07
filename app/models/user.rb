class User < ActiveRecord::Base
	has_many :cars
	has_many :trips
	validates_presence_of :name

	def name_with_email
		"#{self.name} - #{self.email}"
	end

	def self.by_email
		order(:email)
	end

	def has_bio?
		!self.bio.nil?
	end
end
