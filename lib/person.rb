require "pry"



class Person

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    attr_reader :name, :happiness, :hygiene #TBC
    attr_writer  #TBD
    attr_accessor (:bank_account   )#TCL

    def happiness=(happiness)
       @happiness = rating_limiter(happiness)
    end
    
    def hygiene=(hygiene)
       @hygiene = rating_limiter(hygiene)
    end

    def rating_limiter(generic_rating)
        newRating = nil
        if generic_rating > 10 
            newRating = 10
        elsif generic_rating <0 
            newRating = 0
        else
            newRating = generic_rating
        end
        return newRating
    end

    def enough?(generic_rating) 
        if generic_rating > 7
            true
        else
            false
        end
    end
    
    def happy?
        enough?(@happiness)
    end

    def clean?
        enough?(@hygiene)
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        
        @happiness += 2
        self.happiness=(@happiness)

        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness += 3
        self.happiness=(@happiness)
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            @happiness -= 2
            self.happiness=(@happiness)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            @happiness += 1
            self.happiness=(@happiness)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end
end


stella = Person.new("stella")
#binding.pry

