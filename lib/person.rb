# your code goes here
class Person

   attr_reader :name, :happiness, :hygiene
   attr_accessor :bank_account

    def initialize(name_arg)
       @name = name_arg
       @bank_account = 25
       @happiness = 8
       @hygiene = 8
    end

    def happiness=(argument)
      if argument >10
        argument=10
      elsif argument<0
        argument=0
      end
        @happiness = argument
    end

    def hygiene=(argument)
        if argument >10
           argument=10
           elsif argument<0
               argument=0
           end
       @hygiene = argument
    end
    def check_method(arg)
        if arg > 10
        return 10

        elsif arg < 0
            return 0
        else 
            return arg
        end
    end

  
    def happy?
       if @happiness > 7
          return true
       else
        return false
       end
    end

    def clean?
      if @hygiene > 7
        return true
      else
        return false
      end
    end

    def get_paid(salary)
      @bank_account+=salary
      return 'all about the benjamins'
    end

    def take_bath
      @hygiene+=4
      self.hygiene=@hygiene
      return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
      @hygiene-=3
      self.hygiene=@hygiene
      @happiness+=2
      self.happiness=@happiness
      return '♪ another one bites the dust ♫'
    end

    def call_friend(name)
      @happiness+=3
      self.happiness= @happiness
      name.happiness+=3
      happiness= name.happiness
      return "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
      if topic == "politics"
        @happiness-=2
        self.happiness= @happiness
        name.happiness-=2
        happiness= name.happiness
        return "blah blah partisan blah lobbyist"
      elsif topic=="weather"
        @happiness+=1
        self.happiness= @happiness
        name.happiness+=1
        happiness= name.happiness
        return "blah blah sun blah rain"
      else 
        return "blah blah blah blah blah"
      end
    end
end
