require "pry"
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account

    def happiness=(new_happiness)
        if new_happiness > 10
            @happiness = 10
        elsif new_happiness < 0
            @happiness = 0
        else
            @happiness = new_happiness
        end
    end

    def hygiene=(new_hygiene)
        if new_hygiene > 10
            @hygiene = 10
        elsif new_hygiene < 0
            @hygiene = 0
        else
            @hygiene = new_hygiene
        end
    end

    def enough?(limit)
        if limit > 7
            true
        else
            false
        end
    end

    def clean?
        enough?(@hygiene)
    end

    def happy?
        enough?(@happiness)
    end

    def get_paid(salary)
        self.bank_account += salary 
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(another_person)
        self.happiness += 3
        another_person.happiness += 3 
        "Hi #{another_person.name}! It's #{self.name}. How are you?"
    end 
    def start_conversation(another_person, topic)
        if topic == 'politics'
            self.happiness -= 2
            another_person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1 
            another_person.happiness += 1
            'blah blah sun blah rain'

        else 
            'blah blah blah blah blah'
        end
    end
end


# john = Person.new("John", 25, 8, 8)


# stella = Person.new("Stella", "5", 2, 1)



# binding.pry

