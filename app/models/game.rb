class Game < ActiveRecord::Base
	belongs_to :publisher
	has_many :ratings, dependent: :destroy
	has_many :raters, through: :ratings, source: :user

	validates :name, uniqueness: {scope: :publisher, message:"There is already a game with that name, with the same publisher"}

	def to_s
		"#{name}"
	end
end
