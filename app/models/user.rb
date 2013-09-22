class User < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  has_many :games, through: :ratings

  validates :name, 	presence: true, 
  					uniqueness: true
  has_secure_password
  validates :password, 	format:{with: /\w*/, message:"Must be contained of letters and numbers"},
  						length:{:in => 4..36}

  def to_s
  	"#{name}"
  end
end
