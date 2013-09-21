class User < ActiveRecord::Base
  validates :name, 	presence: true, 
  					uniqueness: true
  has_secure_password
  validates :password, 	format:{with: /\w*/, message:"Must be contained of letters and numbers"},
  						length:{:in => 6..36}

  def to_s
  	"#{name}"
  end
end
