class Rating < ActiveRecord::Base
	belongs_to :game
	belongs_to :user

	validates :score, 	numericality:{:in => 1..10}, format:{with:/\A\d*(\.\d)?\z/, message:"Must be a number with max 1 digit"} ,
						presence:true
	validates :game, 	uniqueness: {scope: :user, message:"You cannot rate same game twice"}, 
						presence:true
	validates :user, 	presence:{message:"You have to be logged to do that"}
	
	def to_s
		"#{game}: #{score}"
	end
end
