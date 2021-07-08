# your code goes here
require "pry"

    class Person
        attr_reader :name, :bank_account, :happiness, :hygiene
        attr_writer :bank_account

        def initialize(name)
            @name = name
            @bank_account = 25
            @happiness = 8
            @hygiene = 8
        end

        def happiness=(happiness_value)
            if happiness_value > 10
                @happiness = 10
            elsif happiness_value <0
                @happiness = 0
            else
                @happiness = happiness_value
            end

        end

        def hygiene=(hygiene_update)
            if hygiene_update > 10
                @hygiene = 10
            elsif hygiene_update < 0
                @hygiene  = 0
            else
                @hygiene = hygiene_update
            end
        end

        def update_hygiene(hygiene_value, increase_amount)
            @hygiene = hygiene_value + increase_amount
            if @hygiene > 10
                return hygiene_value = 10
            elsif
                @hygiene < 0
                return hygiene_value = 0
            else
                return hygiene_value + increase_amount
            end

        end

        def clean?
            if(@hygiene > 7)
                return true
            else
                return false
            end

        end


        def update_happiness(happiness_value, increase_amount)
            if happiness_value + increase_amount > 10
                    return happiness_value = 10
                elsif happiness_value + increase_amount < 0
                    return happiness_value = 0
                else
                    return happiness_value + increase_amount
            end



        end 

        def happy?
            if(@happiness > 7)
                return true
            else
                return false
            end

        end

        

        def get_paid(pay_amount)
            @bank_account+=pay_amount
            return "all about the benjamins"
        end

        def take_bath
            self.hygiene = @hygiene + 4
            #@hygiene = self.hygiene+4
            #@hygiene = update_hygiene(@hygiene, 4)
            return "♪ Rub-a-dub just relaxing in the tub ♫"
            
        end

        def work_out
            self.hygiene = @hygiene-3
            
            self.happiness = @happiness+2
            
            return "♪ another one bites the dust ♫" 
        end

    

        def call_friend(person_obj)
            self.happiness = @happiness+3
            person_obj.happiness = person_obj.happiness+3

            return "Hi #{person_obj.name}! It's #{self.name}. How are you?" 

        end

        

        def start_conversation(person,topic)
            if topic == "politics"
                self.happiness = @happiness-2
                person.happiness = person.happiness-2
                return "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness = @happiness+1
                person.happiness = person.happiness+1

                return "blah blah sun blah rain"
            else
                return "blah blah blah blah blah"

            end
            
        end


    end


