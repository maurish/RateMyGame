class Game < ActiveRecord::Base
	belongs_to :publisher
	has_many :ratings
	has_many :raters, through: :ratings, source: :user
end
