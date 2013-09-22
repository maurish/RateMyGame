class Game < ActiveRecord::Base
	belongs_to :publisher
	has_many :ratings, dependent: :destroy
	has_many :raters, through: :ratings, source: :user


	def to_s
		"#{name}"
	end
end
