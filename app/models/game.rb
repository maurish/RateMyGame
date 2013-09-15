class Game < ActiveRecord::Base
	belongs_to :publisher
	has_many :ratings
end
