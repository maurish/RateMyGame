class Publisher < ActiveRecord::Base
	has_many :games, dependent: :destroy

	validates :name, 	uniqueness: true, 
						presence:true 

	validates :year, numericality: {:in=>1950..2013, integer_only:true}

	def to_s
		"#{name}"
	end
end
