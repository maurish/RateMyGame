class Publisher < ActiveRecord::Base
	has_many :games, dependent: :destroy

	def to_s
		"#{name}"
	end
end
