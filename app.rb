require 'pry'

require_relative 'lib/user.rb'
require_relative 'lib/event.rb'
require_relative 'lib/event_creator.rb'


samsam = User.new("sam@nananere.fr", 47)
pascaliou = User.new("Rascal@nananere.fr", 49)
mat = User.new("mat@nananere.fr", 47)

def perform 
        creation_title
        creation_start_date
        creation_duration
        creation_attendees
        puts "ok on y est t'as un rendez vous noté"
        Event.new(@start_date, @duration, @attendees)
end

end

perform




