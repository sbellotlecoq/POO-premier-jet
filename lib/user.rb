require "pry"

class User

	@@all_users = []
	attr_accessor :email, :age

	#constructor
	def initialize (email,age)
		@email = email
		@age = age
		@@all_users << self
	end

	# CLASS METHODS
	#@@all_user accessor
	def self.all
		return @@all_users
	end
	#find an instance of user with the mail
	def self.find_by_email (mail)
		match = @@all_users.select {|user| user.email == mail}
		return match[0] if match.size > 0
		return nil
	end
end




