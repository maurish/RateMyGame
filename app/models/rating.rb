class Rating < ActiveRecord::Base
	belongs_to :game
	belongs_to :user
	def to_s
		"#{game}: #{score}"
	end
end
