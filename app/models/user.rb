class User < ActiveRecord::Base
	has_secure_password

	has_many :tests

	validates :name, uniqueness: true
  	validates :password_confirmation, presence: true

end
