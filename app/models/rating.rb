class Rating < ActiveRecord::Base
	belongs_to :game
	belongs_to :user

	validates :score, numericality:{:in => 1..10}, format:{with:/\A\d*(\.\d)?\z/, message:"Must be a number with max 1 digit"} 

	def to_s
		"#{game}: #{score}"
	end
end
