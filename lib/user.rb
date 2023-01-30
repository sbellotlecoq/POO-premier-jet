 require 'pry'

 class User
  attr_accessor :email, :age
  @@user_count = 0
  @@all_users_hash = Array.new
  
  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users_hash.push(@email, @age) #rajoute les infos dans une nouvelle array
  end

   def show_itself #montre les infos d'instance  apres la creation des infos du user
    puts self
  end

  def self.all
      @@all_users
  end

	def self.find_by_email (mail)
		match = @@all_users.select {|user| user.email == mail}
		return match[0] if match.size > 0
		return nil

  def self.all
    return @@all_users_hash
  end
end




