class Game < ActiveRecord::Base
	belongs_to :publisher
	has_many :ratings, dependent: :destroy
	has_many :raters, through: :ratings, source: :user

	def average_rating
		self.ratings.map{|rating| rating.score}.reduce(:+).to_f / self.ratings.count
	end

	def to_s
		"#{name}"
	end
end
