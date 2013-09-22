class Publisher < ActiveRecord::Base
	has_many :games, dependent: :destroy
end
