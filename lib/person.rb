require 'pry'

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
      @happiness = points
    if points > 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    end
  end

  def hygiene=(points)
      @hygiene = points
    if points > 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end


Bob = Person.new("bob")
Carl = Person.new("carl")
Bob.call_friend(Carl)
