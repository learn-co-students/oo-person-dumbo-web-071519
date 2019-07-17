require 'pry'


class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_reader :name, :bank_account, :happiness, :hygiene
  attr_writer :bank_account, :happiness

  def happiness=(new_happiness)
    if new_happiness  > 10
      @happiness = 10
    elsif
      new_happiness  < 0
    @happiness = 0
    else
    @happiness = new_happiness
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene > 10
      @hygiene = 10
    elsif
      new_hygiene < 0
      @hygiene = 0
    else
      @hygiene = new_hygiene
    end
  end

  def happy?
    if @happiness > 7
      @happiness = true
    else
      @happiness = false
    end
  end

  def clean?
    if @hygiene > 7
      @hygiene = true
    else
      @hygiene = false
    end
  end

  def get_paid(salary)
    self.bank_account +=salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)  
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene=(@hygiene)

    @happiness += 2
    self.happiness=(@happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    self.happiness=(@happiness)
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      @happiness -= 2
      self.happiness=@happiness
      friend.happiness=@happiness
      "blah blah partisan blah lobbyist"
    elsif
      topic == "weather"
      @happiness += 1
      self.happiness=@happiness
      friend.happiness=@happiness
      "blah blah sun blah rain"
    elsif
      topic != "politics" || "weather"
      "blah blah blah blah blah"
    end
  end
person1 = Person.new("Whatever")

end


# def hygiene=(new_hygiene)


