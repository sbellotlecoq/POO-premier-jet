require "pry"
require_relative "event_creator"

class Event
    attr_accessor :start_date
    attr_accessor :duration
    attr_accessor :title
    attr_accessor :attendees
    attr_accessor :number_of_events
    @@number_of_events = 0

    def initialize(start_date_input, duration, time, attendees)
        @start_date = time.parse(start_date_input)
        @duration = duration
        @title = title
        @attendees = attendees
        @@number_of_events = @@number_of_events + 1
    end

    def report_24h
        @start_date = @start_date + 86400
    end

    def enddate
        end_date = @start_date + @duration
        return end_date
    end

    def past?
        return @start_date > Time.now
    end

    def is_after?
        return @start_date < Time.now
    end

    def when
        if past
            return "c'est mort mec, trop tard"
        else
            return Time.now + 1800 > @start_date
        end
    end

    def self.count
        return @@number_of_events
      end

end


        


