# your code goes here
require 'pry'

class Person
    #DATA

    #GETTERS
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account

    #SETTERS
    
    #INITIALIZE

    def initialize(name_arg)
        @name = name_arg
        @bank_account = 25 # -infinitiy < bank_account < +infinity 
        @happiness = 8 # 0 < happiness_points < 10
        @hygiene = 8  # 0 < @hygiene < 10
    end

    def hygiene=(hygiene_arg)
        #@hygiene = hygiene_arg
        if hygiene_arg > 10 
            @hygiene = 10
        elsif hygiene_arg < 0
            @hygiene = 0
        else 
            @hygiene = hygiene_arg
        end
        #hygiene_arg < 10 ? @hygiene = hygiene_arg : @hygiene = 10
    end
    
    def happiness=(happiness_arg)
        #@happiness = happiness_arg
        if happiness_arg > 10 
            @happiness = 10
        elsif happiness_arg < 0
            @happiness = 0
        else 
            @happiness = happiness_arg
        end
        #happiness_arg < 10 ? @happiness = happiness_arg : @happiness = 10
    end

    #METHODS 
    def clean?
        @hygiene > 7 
    end

    def happy?
        @happiness > 7 
    end
    
    def get_paid(salary_amount)
        @bank_account += salary_amount 
        return "all about the benjamins"
    end

    def take_bath
        #@hygiene < 6 ? 
        self.hygiene=(@hygiene += 4)  
        #: @hygiene = 10
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        #@hygiene > 4 ? 
        self.hygiene=(@hygiene -= 3 ) 
        self.happiness=(@happiness += 2) 
        #: @hygiene = 0
        return "♪ another one bites the dust ♫"
    end
    
    def call_friend(callee)
        #The call_friend method should accept another instance of the Person class, 
        #or "friend". 
        #The method should increment the caller and the callee's happiness points 
        #by three. If Stella calls her friend Felix, 

        #self.increment_happiness(3)
        self.happiness += 3
        callee.happiness += 3
        #callee.increment_happiness(3)

        return "Hi #{callee.name}! It's #{self.name}. How are you?"

    end
    
    def start_conversation(conversation_initiator, topic)
        if topic == "politics" 
            #self.decrement_happiness(2) 
            self.happiness -= 2
            #conversation_initiator.decrement_happiness(2)
            conversation_initiator.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            #self.increment_happiness(1) 
            self.happiness += 1
            #conversation_initiator.increment_happiness(1)
            conversation_initiator.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end    
    end
    #BEHAVIOR
    def increment_happiness(points)
        x = 10 - points
        @happiness <= x ? @happiness += points : @happiness = 10
    end

    def decrement_happiness(points)
        @happiness >= points ? @happiness -= points : @happiness = 0
    end

end

mackenzie = Person.new("Mackenzie")
ali = Person.new("Ali")

# binding.pry