class Publisher < ActiveRecord::Base
	has_many :games, dependent: :destroy

	validates :name, 	uniqueness: true, 
						presence:true 

	def to_s
		"#{name}"
	end
end
