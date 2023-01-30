require "pry"

class Event_creator
    attr_accessor :start_date
    attr_accessor :duration
    attr_accessor :title
    attr_accessor :attendees
    attr_accessor :number_of_events

    def self.creation_title
        puts " salut tu veux caler un rendez vous ?"
        puts "comment ça s'appelle ?"
        print ":> "
        @title = gets.chomp
    end

    def self.creation_start_date
        puts " c'est quand ?"
        print ":> "
        @start_date = gets.chomp
    end

    def self.creation_duration
        puts " combien de temps il te faut (minutes please) ?"
        print ":> "
        @duration = gets.chomp
    end

    def self.creation_attendees
        puts " t'es tout seul ? sinon envoies les emails de tes amis"
        print ":> "
        @attendees = gets.chomp
    end
end

    